(defvar robot-mode-header-keywords
  '("^\\*\\{3\\}[ \t]+\\(Settings\\|Test Cases\\|Keywords\\|Variables\\)[ \t]+\\*\\{3\\}" . font-lock-keyword-face)
  "Header keywords")

(defvar robot-mode-settings-keyword
  '("\\[\\(Documentation\\|Tags\\|Setup\\|Teardown\\|Template\\|Timeout\\)\\]" . font-lock-keyword-face)
  "Test case settings keyword")

(defvar robot-mode-comment
  '("^[\s\ta-zA-Z0-9]*\\(#.*\\)$" . (1 font-lock-comment-face))
  "Comment")

(defvar robot-mode-variable
  '("[\\$&@]{.*}" . font-lock-variable-name-face))

(defvar robot-mode-font-lock-keywords
  (list
    robot-mode-header-keywords
    robot-mode-settings-keyword
    robot-mode-comment
    robot-mode-variable)
  "All available keywords")

(define-derived-mode robot-mode fundamental-mode "Robot Framework"
  "A major mode for Robot Framework."
  (setq-local font-lock-defaults
    '(robot-mode-font-lock-keywords)))

(add-to-list 'auto-mode-alist '("\\.robot\\'" . robot-mode))

(provide 'robot-mode)
;; robot-mode ends here
