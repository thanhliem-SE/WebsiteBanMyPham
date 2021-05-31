<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/common/taglib.jsp"%>
<section class="content">
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-xs-12 col-sm-3">
				<div class="card profile-card">
					<div class="profile-header">&nbsp;</div>
					<div class="profile-body">
						<div class="image-area">
							<img src="<c:url value="/resources/admin/images/wow.jpg"/>" alt="AdminEST - Profile Image" />
						</div>
						<div class="content-area">
							<h3>Trung Vinh</h3>
							<p>Web Software Developer</p>
							<p>Administrator</p>
						</div>
					</div>
					<div class="profile-footer">
						<ul>
							<li><span>Followers</span> <span>1.234</span></li>
							<li><span>Following</span> <span>1.201</span></li>
							<li><span>Friends</span> <span>14.252</span></li>
						</ul>
						<button class="btn btn-primary btn-lg waves-effect btn-block">FOLLOW</button>
					</div>
				</div>

				<div class="card card-about-me">
					<div class="header">
						<h2>ABOUT ME</h2>
					</div>
					<div class="body">
						<ul>
							<li>
								<div class="title">
									<i class="material-icons">library_books</i> Education
								</div>
								<div class="content">B.S. in Computer Science from the
									University of Tennessee at Knoxville</div>
							</li>
							<li>
								<div class="title">
									<i class="material-icons">location_on</i> Location
								</div>
								<div class="content">Ho Chi Minh City, Viet Nam</div>
							</li>
							<li>
								<div class="title">
									<i class="material-icons">edit</i> Skills
								</div>
								<div class="content">
									<span class="label bg-red">UI Design</span> <span
										class="label bg-teal">JavaScript</span> <span
										class="label bg-blue">PHP</span> <span class="label bg-amber">Node.js</span>
								</div>
							</li>
							<li>
								<div class="title">
									<i class="material-icons">notes</i> Description
								</div>
								<div class="content">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Etiam fermentum enim neque.</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-9">
				<div class="card">
					<div class="body">
						<div>
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
								<li role="presentation"><a href="#profile_settings"
									aria-controls="settings" role="tab" data-toggle="tab">Profile
										Settings</a></li>
								<li role="presentation"><a href="#change_password_settings"
									aria-controls="settings" role="tab" data-toggle="tab">Change
										Password</a></li>
							</ul>

							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home">
									<div class="panel panel-default panel-post">
										<div class="panel-heading">
											<div class="media">
												<div class="media-left">
													<a href="#"> <img src="<c:url value="/resources/admin/images/wow.jpg"/>" />
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading">
														<a href="#">Trung Vinh</a>
													</h4>
													Shared publicly - 26 Oct 2021
												</div>
											</div>
										</div>
										<div class="panel-body">
											<div class="post">
												<div class="post-heading">
													<p>
														Hi bro :)
													</p>
												</div>
												<div class="post-content">
													<img src="<c:url value="/resources/admin/images/trungvinh-post-01.jpg"/>"
														class="img-responsive" />
												</div>
											</div>
										</div>
										<div class="panel-footer">
											<ul>
												<li><a href="#"> <i class="material-icons">thumb_up</i>
														<span>99999 Likes</span>
												</a></li>
												<li><a href="#"> <i class="material-icons">comment</i>
														<span>5522 Comments</span>
												</a></li>
												<li><a href="#"> <i class="material-icons">share</i>
														<span>Share</span>
												</a></li>
											</ul>

											<div class="form-group">
												<div class="form-line">
													<input type="text" class="form-control"
														placeholder="Type a comment" />
												</div>
											</div>
										</div>
									</div>

								</div>
								<div role="tabpanel" class="tab-pane fade in"
									id="profile_settings">
									<form class="form-horizontal">
										<div class="form-group">
											<label for="NameSurname" class="col-sm-2 control-label">Name
												Surname</label>
											<div class="col-sm-10">
												<div class="form-line">
													<input type="text" class="form-control" id="NameSurname"
														name="NameSurname" placeholder="Name Surname"
														value="Trần Trung Vinh" required>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="Email" class="col-sm-2 control-label">Email</label>
											<div class="col-sm-10">
												<div class="form-line">
													<input type="email" class="form-control" id="Email"
														name="Email" placeholder="Email"
														value="trungvinh@estore.com" required>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="InputExperience" class="col-sm-2 control-label">Experience</label>

											<div class="col-sm-10">
												<div class="form-line">
													<textarea class="form-control" id="InputExperience"
														name="InputExperience" rows="3" placeholder="Experience"></textarea>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="InputSkills" class="col-sm-2 control-label">Skills</label>

											<div class="col-sm-10">
												<div class="form-line">
													<input type="text" class="form-control" id="InputSkills"
														name="InputSkills" placeholder="Skills">
												</div>
											</div>
										</div>

										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<input type="checkbox" id="terms_condition_check"
													class="chk-col-red filled-in" /> <label
													for="terms_condition_check">I agree to the <a
													href="#">terms and conditions</a></label>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-danger">SUBMIT</button>
											</div>
										</div>
									</form>
								</div>
								<div role="tabpanel" class="tab-pane fade in"
									id="change_password_settings">
									<form class="form-horizontal">
										<div class="form-group">
											<label for="OldPassword" class="col-sm-3 control-label">Old
												Password</label>
											<div class="col-sm-9">
												<div class="form-line">
													<input type="password" class="form-control"
														id="OldPassword" name="OldPassword"
														placeholder="Old Password" required>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="NewPassword" class="col-sm-3 control-label">New
												Password</label>
											<div class="col-sm-9">
												<div class="form-line">
													<input type="password" class="form-control"
														id="NewPassword" name="NewPassword"
														placeholder="New Password" required>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="NewPasswordConfirm"
												class="col-sm-3 control-label">New Password
												(Confirm)</label>
											<div class="col-sm-9">
												<div class="form-line">
													<input type="password" class="form-control"
														id="NewPasswordConfirm" name="NewPasswordConfirm"
														placeholder="New Password (Confirm)" required>
												</div>
											</div>
										</div>

										<div class="form-group">
											<div class="col-sm-offset-3 col-sm-9">
												<button type="submit" class="btn btn-danger">SUBMIT</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>