<?php
/**
 * Copyright 2013-2014 Partisk.nu Team
 * https://www.partisk.nu/
 * 
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 * 
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * 
 * @copyright   Copyright 2013-2014 Partisk.nu Team
 * @link        https://www.partisk.nu
 * @package     app.Controller
 * @license     http://opensource.org/licenses/MIT MIT
 */


App::uses('AppController', 'Controller');

class ApiController extends AppController{
    public $helpers = array('Cache');

       
    public function beforeFilter(){
        parent::beforeFilter();
        $this->Auth->allow(array('parties', 'questions', 'answers', 'tags', 'api'));
    }

    public function index(){
        
    }
      
    public function questions($id = null){
        $this->loadModel('Question');
              
        
        if ($this->request->is('get'))
        {            
            $question = !isset($id) ? $this->Question->getQuestionsApi() : $this->Question->getQuestionsApi($id);
            $isSingleObj = isset($id) ? true : false;
            
            if (empty($question)) {
                throw new NotFoundException("Ogiltigt question");
            }
                 
            return $this->renderJson($question, $isSingleObj);
        }  
        
        throw new Exception("Bad request method");
                   
    }
    
    public function parties($id = null){
        $this->loadModel('Party');
              
        if ($this->request->is('get'))
        {            
            $party = !isset($id) ? $this->Party->getPartiesApi() : $this->Party->getPartiesApi($id);
            $isSingleObj = isset($id) ? true : false;
            
            if (empty($party)) {
                throw new NotFoundException("Ogiltigt parti");
            }
                       
            return $this->renderJson($party, $isSingleObj);
        }  
        
        throw new Exception("Bad request method");
                   
    }
     
    public function answers($id = null){
        $this->loadModel('Answer');
              
        if ($this->request->is('get'))
        {      
            $answers = !isset($id) ? $this->Answer->getAnswersApi() : $this->Answer->getAnswersApi($id);
            $isSingleObj = isset($id) ? true : false;
            
            if (empty($answers)) {
                throw new NotFoundException("Ogiltigt svar");
            }
                      
            return $this->renderJson($answers, $isSingleObj);
        }  
        
        throw new Exception("Bad request method");
                   
    }
     
    public function tags($id = null){
        $this->loadModel('Tag');
        $this->loadModel('Question');
              
        if ($this->request->is('get'))
        {      
            $tags = !isset($id) ? $this->Tag->getAllApprovedTags() : $this->Tag->getTagApi($id);
            $isSingleObj = isset($id) ? true : false;
            
            if ($isSingleObj) {
                $questions = $this->Question->getApiTagQuestions($id);
                $tags[0]['questions'] = Set::extract($questions, "/Question/.");
            } else {
                $tags = Set::extract($tags, "/Tag/."); 
            }
            
            if (empty($tags)) {
                throw new NotFoundException("Ogiltig tagg");
            }
                      
            return $this->renderJson($tags, $isSingleObj);
        }  
        
        throw new Exception("Bad request method");
                   
    }
}?>

