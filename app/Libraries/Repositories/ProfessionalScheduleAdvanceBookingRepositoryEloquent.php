<?php

namespace App\Libraries\Repositories;

use App\Libraries\RepositoriesInterfaces\UsersRepository;
use App\Models\ProfessionalScheduleAdvanceBooking;
use App\Supports\BaseMainRepository;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Eloquent\BaseRepository;

/**
 * Class ProfessionalScheduleAdvanceBookingRepositoryEloquent.
 *
 * @package namespace App\Libraries\Repositories;
 */
class ProfessionalScheduleAdvanceBookingRepositoryEloquent extends BaseRepository implements UsersRepository
{
    use BaseMainRepository;

    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return ProfessionalScheduleAdvanceBooking::class;
    }

    /** Boot up the repository, Pushing criteria
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }

    /** Get details for list
     * @param null $input
     * @return array
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function getDetails($input = null)
    {
        $value = $this->makeModel();
        $this->commonFilterFn($value, $input);
        $count = $value->count();
        $this->getCommonPaginationFilterFn($value, $input);
        return [
            'count' => $count,
            'list' => $value
        ];
    }

    /**
     * commonFilterFn => make common filter for list and getDetailsByInput
     *
     * @param mixed $value
     * @param mixed $input
     *
     * @return void
     */
    protected function commonFilterFn(&$value, $input): void
    {
        /** searching */
       
        $this->customRelation($value, $input, []);

        if (isset($input['id'])) {
            $value = $value->where('id', $input['id']);
        }
      
        if (isset($input['description'])) {
            $value = $value->where('description', $input['description']);
        }
       
        /** check for account is active or not */
        if (isset($input['is_active'])) {
            $value = $value->where('is_active', $input['is_active']);
        }
    }

    /**
     * getCommonPaginationFilterFn => Get pagination and get data
     *
     * @param mixed $value
     * @param mixed $input
     *
     * @return void
     */
    protected function getCommonPaginationFilterFn(&$value, $input)
    {
       
        if (isset($input['list'])) {
            $value = $value->select($input['list']);
        }

        if (isset($input['page'], $input['limit'])) {
            $value = $this->customPaginate($value, (array)$input);
            // $value = $value->skip(($input['page'] - 1) * $input['limit'])->take($input['limit']);
        }
        /* if (isset($input['sort_by']) && count($input['sort_by']) > 0) {
            $value = $value->orderBy($input['sort_by'][0], $input['sort_by'][1]);
        } else {
            $value = $value->ordered();
        }
 */
        if (isset($input['first']) && ($input['first'] === true)) {
            $value = $value->first();
        } elseif (isset($input['is_deleted']) && ($input['is_deleted'] === true)) {
            $value = $value->withTrashed()->get();
        } else {
            $value = $value->get();
        }
    }

    /** update some keys
     * @param $input
     * @param $id
     * @return mixed
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function updateRich($input, $id)
    {
        $value = $this->makeModel();
        $value = $value->whereId($id)->first();
        if (isset($value)) {
            $value->fill($input)->update();
            return $value->fresh();
        }
    }

    /** Get details by input
     * @param null $input
     * @return \Illuminate\Database\Eloquent\Model
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function getDetailsByInput($input = null)
    {
      
        $value = $this->makeModel();
        $this->commonFilterFn($value, $input);
        $this->getCommonPaginationFilterFn($value, $input);
        return $value;
    }
}
