<?php
	class AdminAction extends AcommenAction{
		public function admin(){
			$imfor=M("imfor");
			$arr=$imfor->select();
			$this->assign("data",$arr);
			
			//$this->display();
			$this->display();
		}
		public function imfor(){
			$imfor=M("imfor");
			$arr=$imfor->select();
			$this->assign("data",$arr);
			
			$this->display();
		}
		public function grade(){
			$userg=M("userg");
			$arr=$userg->select();
			$this->assign("data",$arr);
			$this->display();
		}
		public function over(){
			$userover=M("userover");
			$arr=$userover->select();
			$this->assign("data",$arr);
			$this->display();
		}
		public function modify(){
			$name=$_GET['name'];
			$imfor=M("imfor");
			$where['name']=$name;
			$arr=$imfor->where($where)->select();
			$this->assign("data",$arr);
			$this->display();
		}
		public function domodify(){
			$demo['id']=$_POST['uid'];
			$demo['class']=$_POST['uclass'];
			$demo['address']=$_POST['uaddress'];
			$demo['phone']=$_POST['uphone'];
			$imfor=M('imfor');
			$where['id']=$demo['id'];
			$result=$imfor->where($where)->save($demo);
			if($result){
				$this->success('修改数据成功！！！！');
			}else{
				//var_dump($demo);
				$this->error("修改数据失败！");
			}
		}
		public function mograde(){
			$where["name"]=$_GET['name'];
			$userg=M("userg");
			$arr=$userg->where($where)->select();
			$this->assign("data",$arr);
			$this->display();
		}
		public function domograde(){
			$demo['name']=$_POST['name'];
			$demo['gaoshu']=$_POST['gaoshu'];
			$demo['english']=$_POST['english'];
			$demo['political']=$_POST['political'];
			$demo['sum']=$_POST['sum'];
			$demo['rank']=$_POST['rank'];
			$userg=M('userg');
			$where['name']=$demo['name'];
			$result=$userg->where($where)->save($demo);
			if($result){
				$this->success('修改数据成功！！！！');
			}else{
				//var_dump($demo);
				$this->error("修改数据失败！");
			}
		}
		public function del(){
			$where['name']=$_GET['name'];
			$user=M('user');
			$userg=M('userg');
			$imfor=M('imfor');
			$userover=M('userover');
			$arru=$user->where($where)->delete();
			$arrg=$userg->where($where)->delete();
			$arri=$imfor->where($where)->delete();
			$arro=$userover->where($where)->delete();
			if($arru && $arrg && arri && arro){
				$this->success('删除数据成功！！！！');
			}else{
				//var_dump($demo);
				$this->error("删除数据失败！");
			}
		}
		public function add(){
			
			$this->display();
		}
		public function doadd(){
			$user=M('user');
			$demo['name']=$_POST['uname'];
			$count=$user->where($demo)->count();
			if($count){
				$this->error('This user already exists!!!');
			}else{
				$demo['id']=$_POST['uid'];
				//var_dump($demo);
				$userg=M('userg');
				$userover=M('userover');
				$arru=$user->add($demo);
				$arrg=$userg->add($demo);
				$arro=$userover->add($demo);
				$imfor=M('imfor');
				$demo['class']=$_POST['uclass'];
				$demo['address']=$_POST['uaddress'];
				$demo['phone']=$_POST['uphone'];
				$demo['sex']=$_POST['usex'];
				$demo['age']=$_POST['uage'];
				$arri=$imfor->add($demo);
				if($arri && arrg && arru && arro){
					//$this->success("成功");
					$this->redirect('Admin/admin');
				}else{
					$this->error("失败");
				}
			}
		}
	}
?>