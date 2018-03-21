;;; init-sinon-for-idiots.el --- Initialize our Presentation
;;
;; Copyright (C) 2018 Dave Voutila
;;
;; Author: Dave Voutila
;;
;;; Commentary:
;; sets up "org-present" mode
;;
;;; Code:

(add-to-list 'load-path "./org-present")
(autoload 'org-present "org-present" nil t)

(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)))))

(provide 'init-sinon-for-idiots)
;;; init-sinon-for-idiots.el ends here
