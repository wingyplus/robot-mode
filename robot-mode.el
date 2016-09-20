(defvar robot-mode-header-keywords
  '("^\\*\\{3\\}\s+\\(Settings\\|Test Cases\\|Keywords\\)\s+\\*\\{3\\}" . font-lock-keyword-face)
  "Header keywords")

(defvar robot-mode-font-lock-keywords
  (list
    robot-mode-header-keywords)
  "All available keywords")

(define-derived-mode robot-mode fundamental-mode "Robot Framework"
  "A major mode for Robot Framework."
  (setq-local font-lock-defaults
    '(robot-mode-font-lock-keywords)))

(add-to-list 'auto-mode-alist '("\\.robot\\'" . robot-mode))

(provide 'robot-mode)
;; robot-mode ends here
