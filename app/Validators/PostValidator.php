<?php 

    namespace App\Validators;

    use Illuminate\Support\Facades\Validator;

    class PostValidator{

        public static function valid($request){

            return Validator::make($request->all(), [
                'field' => 'required|numeric',
            ]);
            
        }
    }