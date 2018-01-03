<?php
	class AdologoutAction extends CommenAction{
		public function doLogout(){
			if(!isset($_SESSION['name'])|| $_SESSION['name']==null){
				$this->error("please login in so that you can user it!",U('Index/index'),3);
				$this->display('Index/index');
			}else{
				$name=$_SESSION['name'];
				//echo $name;
				$_SESSION=array();
					if(isset($_COOKIE[session_name()])){
						setcookie(session_name(),'',time()-1,'/');
					}
				$test=session_destroy();
				if($test){
					$this->success('Welcome once again to use us!',U('Index/index'));//U������һ��������·��
				}else{
					$this->error("ע��ʧ��");
				}
			}
		}
	}
?>