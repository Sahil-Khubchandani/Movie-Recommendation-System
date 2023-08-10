<?php
    $serverName = "localhost";
    $username = "root";
    $password = "";
    $dbName = "movies";
    try{
        $connection = new PDO("mysql:host=$serverName;dbname=$dbName",$username,$password);
        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);        
    }catch(PDOException $e){
        echo "<script>alert('".$e->getMessage()."');</script>";
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Recommendation System</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
</head>
<body>
<div class="row">
		<h2 align="center">Movie Recommendation System</h2>
		<hr />
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Select Category</div>
					<div class="panel-body">
						<form role="form" action="" method="post" id="">
						<fieldset>
							<div class="form-group">
								<select name="category[]" value="<?= $category ?>" class="form-control" multiple title="Hold CTRL key to select multiple">
                                    <?php 
                                        $query = $connection->prepare("select distinct category from movie_details");
                                        $query->execute();
                                        $result = $query->fetchAll(PDO::FETCH_ASSOC);
                                        foreach($result as $k => $v){
                                            print "<option value=".$v['category'].">".$v['category']."</option>";
                                        }
                                    ?>
                                </select>
							</div>
								<button type="submit" value="submit" name="submit" class="btn btn-primary btn-block">Submit</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->    
    <div class="row">
        <?php
        if (isset($_POST['submit'])) {
            $category = $_POST['category'];
            $categories = implode($category);
            $where=array();
            foreach($category as $v){
                array_push($where,"category LIKE '%".$v."%'");
            }
            $where=implode(" or ",$where);
            $query = $connection->prepare("select distinct movieName, category, summary, releaseDate, rating, link from movie_details where ".$where);
            $query->execute();
            $result = $query->fetchAll(PDO::FETCH_ASSOC);
            foreach($result as $k => $v){ ?>
                <a href="<?= $v['link']; ?>" title=" IMDB LINK: <?= $v['movieName']; ?>" target="_blank">
                    <div class="col-lg-6">
                        <div class="card" style="background-color: white;padding: 10px 15px; border-radius:10px;">
                            <h3 class="card-header">
                                <?= $v['movieName']; ?>
                            </h3>
                            <p>
                            Category:- <cite title="Movie Category"><?= $v['category']; ?></cite><br>
                            Date released:- <cite title="Movie Release date"><?= $v['releaseDate']; ?></cite>
                            </p>
                            <div class="card-body">
                                <blockquote class="blockquote mb-0">
                                    <p><?= $v['summary']; ?></p>
                                    <footer class="blockquote-footer">Rating:- <cite title="Source Title"><?= "IMDB ".$v['rating']; ?></cite></footer>
                                </blockquote>
                            </div>
                        </div>
                        <br>
                    </div>
                </a>
            <?php }
        }
        ?>
    </div>
</body>
</html>