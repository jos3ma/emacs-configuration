;; Jedi
;; (require 'ein)
(require 'direx)

(setq python-environment-directory "~/.virtualenvs")


(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)

(setq jedi:environment-root "jedi")  ; name of the virtualenv
(setq jedi:server-command '("/home/humitos/.emacs.d/vendor/emacs-jedi/jediepcserver.py"))
(setq jedi:server-args 
      '("--virtual-env" "~/.virtualenvs/emacs-jedi"
	"--log" "/tmp/jediepcserver.log"
	"--log-level" "DEBUG"))

(setq jedi:complete-on-dot t)

(setq jedi:get-in-function-call-delay 500)

;; (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
;; (eval-after-load "python"
;;   '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
;; (add-hook 'jedi-mode-hook 'jedi-direx:setup)

;; (setq jedi:tooltip-method '(popup))
