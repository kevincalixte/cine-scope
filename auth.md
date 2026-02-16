# Authentification

php bin/console make:security:form-login
php bin/console make:registration-form

security.yaml -> - { path: ^/evenement/\d+/, roles: ROLE_USER }
is_granted('IS_AUTHENTICATED_FULLY')
is_granted('USER_ROLE')

services.yaml -> parameters:
uploads: "%kernel.project_dir%/public/uploads/images"

  #[Route('/profile', name: 'app_profile')]
    public function index(UserInterface $user): Response -> dd