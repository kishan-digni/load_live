<?php /** @noinspection ALL */

namespace App\Http\Controllers\API\v1\Library;

use App\Libraries\Repositories\LogResistanceValidationsRepositoryEloquent;
use App\Libraries\Repositories\UsersRepositoryEloquent;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\TrainingLog;

class LogResistanceValidationsController extends Controller
{

    protected $moduleName = "Log Resistance Validations";

    protected $logResistanceValidationsRepository;

    /**
     * LogResistanceValidationsController constructor.
     * @param LogResistanceValidationsRepositoryEloquent $logResistanceValidationsRepository
     */
    public function __construct(LogResistanceValidationsRepositoryEloquent $logResistanceValidationsRepository)
    {
        $this->logResistanceValidationsRepository = $logResistanceValidationsRepository;
    }

    /**
     * @param Request $request
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function listOfLogResistanceValidations(Request $request)
    {
        $input = $request->all();
        $logResistanceValidations = $this->logResistanceValidationsRepository->getDetailsByInput($input);
        /** Start
         * Modified By : Kishan J Gareja
         *Modified Date : 04-Feb-2021
        */ 
        $training_log_id = isset($input['training_log_id']) ? $input['training_log_id'] : 0;
        if ($training_log_id) {        	
        	$logResistanceValidations['generated_calculations'] = TrainingLog::select('generated_calculations')->where('id',$training_log_id)->get()->toArray();
        }
         /** End Modified */ 
        if (!!!isset($logResistanceValidations)) return $this->sendBadRequest(null, __('validation.common.details_not_found', ['module' => $this->moduleName]));

        return $this->sendSuccessResponse($logResistanceValidations, __('validation.common.details_found', ['module' => $this->moduleName]));
    }
}
