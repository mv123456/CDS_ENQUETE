# CDS Enquete Component (com_cdsenquete)

A complete Joomla 5 component for creating and managing surveys/enquetes.

## Features

- ✅ Create and manage surveys
- ✅ Add questions with multiple question types (text, textarea, select)
- ✅ Collect user responses
- ✅ View survey results
- ✅ Frontend survey display
- ✅ Backend survey management
- ✅ Multilingual support
- ✅ Database-backed with proper relationships

## Installation

1. Package the `cdsenquete` folder as a ZIP file
2. Go to Joomla Administrator → Extensions → Install/Manage
3. Upload and install the component
4. The database tables will be created automatically

## Directory Structure

```
cdsenquete/
├── admin/
│   └── cdsenquete.xml          # Administrator manifest
├── site/
│   ├── cdsenquete.xml          # Site manifest
│   ├── cdsenquete.php          # Main entry point
│   ├── script.php              # Installation script
│   ├── src/
│   │   ├── Controller/
│   │   │   └── DisplayController.php
│   │   ├── Model/
│   │   │   ├── EnquetesModel.php
│   │   │   └── EnqueteModel.php
│   │   └── Helper/
│   │       └── CdsenqueteHelper.php
│   ├── tmpl/
│   │   ├── enquetes/
│   │   │   └── default.php     # Surveys list view
│   │   └── enquete/
│   │       └── default.php     # Single survey view
│   ├── language/
│   │   └── en-GB/
│   │       ├── com_cdsenquete.ini
│   │       └── com_cdsenquete.sys.ini
│   └── sql/
│       ├── install.mysql.utf8.sql
│       └── uninstall.mysql.utf8.sql
```

## Database Tables

### #__cdsenquete_enquetes
Main surveys table with title, description, and publication status.

### #__cdsenquete_questions
Survey questions with type (text, textarea, select), options, and requirement status.

### #__cdsenquete_responses
User responses to surveys with JSON-encoded answer data.

## Usage

### For Users
1. Navigate to the surveys component on the frontend
2. Select a survey and fill out the questions
3. Submit your response

### For Administrators
1. Go to Administrator → Components → CDS Enquete
2. Create new surveys
3. Add questions to surveys
4. View collected responses

## Question Types

- **Text**: Single line text input
- **Textarea**: Multi-line text input
- **Select**: Dropdown with predefined options

## Version
1.0.0

## Author
mv123456

## License
GNU General Public License version 2 or later