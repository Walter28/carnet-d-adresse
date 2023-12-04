<!-- Modal pour la faire la reservation-->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Creation d'un contact</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="g-3" method="post" action="creeContact.php" id="form">
                            <div class="info-perso">
                                <div class="row">
                                    <div class="ip-titre col-md-5 mx-4">
                                        <h5>Infomation Personnel</h5>
                                    </div>
                                    <div class="ip-body col-md-5">
                                        <p>
                                            <label for="nom" class="form-label">Nom Complet</label>
                                            <input required type="text" name="nom" class="form-control">
                                        </p>
                                        <p>
                                            <label for="mail" class="form-label">E-Mail</label>
                                            <input required type="email" name="mail" class="form-control">
                                        </p>
                                        <p>
                                            <label for="phone" class="form-label">Phone</label>
                                            <input required type="number" name="phone" class="form-control">
                                        </p>
                                        <p>
                                            <label for="addr" class="form-label">Votre adresse <span style="color: red;">*</span></label>
                                            <input required type="text" name="addr" class="form-control">
                                        </p>
                                    </div>
                                </div>
                            </div><hr><!-- end info perso -->
                            

                            <div class="col-auto modal-btn-cont">
                                <!-- <a href="#" class="btn btn-default" data-bs-dismiss="modal">Annuler</a> -->
                                <button type="submit" class="btn btn-primary" name="reservBtn" id="reservBtn">Valider</button>
                            </div>
                        </form>
                    </div>
                    </div>
                </div>
            </div>
            <!-- End Modal  -->