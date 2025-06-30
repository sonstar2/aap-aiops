# AAP-aiops

An extension project based on LB2961: Introduction to AI-Driven Ansible Automation that demonstrates end-to-end workflow automation with ServiceNow (SNOW) integration.

## Overview

This project builds upon the foundational concepts from LB2961 to create a comprehensive demo environment showcasing AI-driven automation workflows integrated with ServiceNow. The setup provides a complete demonstration of how Ansible Automation Platform can orchestrate complex workflows with external service management platforms.

## Prerequisites

- Ansible Automation Platform (AAP) environment
- Access to a Gitea repository
- ServiceNow instance access
- Valid credentials for all systems

## Quick Setup

To set up the demo environment, run the following command with your specific environment details:

```bash
ansible-playbook setup_demo/setup_demo.yml \
  -e 'aap_hostname=<YOUR_AAP_HOSTNAME>' \
  -e 'aap_username=lab-user' \
  -e 'aap_password=<YOUR_AAP_PASSWORD>' \
  -e 'gitea_url=<YOUR_GITEA_URL>' \
  -e 'gitea_token=<YOUR_GITEA_TOKEN>' \
  -e 'snow_instance=<YOUR_SNOW_INSTANCE>' \
  -e 'snow_username=<YOUR_SNOW_USERNAME>' \
  -e 'snow_password=<YOUR_SNOW_PASSWORD>'
```

### Required Parameters

| Parameter | Description | Example |
|-----------|-------------|---------|
| `aap_hostname` | Your Ansible Automation Platform hostname | `aap.example.com` |
| `aap_username` | AAP username (default: lab-user) | `lab-user` |
| `aap_password` | Password for AAP authentication | `your-secure-password` |
| `gitea_url` | URL of your Gitea repository | `https://gitea.example.com` |
| `gitea_token` | Authentication token for Gitea access | `your-gitea-token` |
| `snow_instance` | ServiceNow instance URL | `https://dev12345.service-now.com` |
| `snow_username` | ServiceNow username | `admin` |
| `snow_password` | ServiceNow password | `your-snow-password` |


## Project Structure

```
AAP-aiops/
├── setup_demo/
│   ├── setup_demo.yml                          # Main setup playbook
│   └── configs/                                # Configuration files
│       ├── controller_credential_types.yaml   # Custom credential type definitions
│       ├── controller_credentials.yaml        # Authentication credentials config
│       ├── controller_job_templates.yaml      # Job template configurations
│       ├── controller_projects.yaml           # Project definitions
│       ├── controller_workflow_job_templates.yaml # Workflow templates
│       └── eda_rulebook_activation.yaml       # Event-Driven Ansible rulebook config
├── README.md                                   # This file
└── [additional project files]
```

## Features

- **AI-Driven Automation**: Leverages artificial intelligence to enhance automation workflows
- **ServiceNow Integration**: Seamless integration with SNOW for service management
- **End-to-End Workflows**: Complete automation pipelines from trigger to resolution
- **Demo Environment**: Ready-to-use demonstration setup for training and testing

## Post-Setup Configuration

After the setup playbook executes successfully, verify the following components are properly configured:

1. **AIOps Auto Healing Workflow**: Confirm that the "AIOps Auto Healing" workflow has been created in your AAP instance
   - Navigate to Templates → Workflow Job Templates
   - Look for "AIOps Auto Healing" workflow template

2. **AIOps Rulebook Activation**: Ensure the AIOps rulebook activation is running
   - Go to Event-Driven Ansible → Rulebook Activations
   - Verify the AIOps rulebook activation status is "Running"

## Usage

Once setup is complete, the demo environment will be ready to showcase:
- Automated incident response workflows
- AI-enhanced decision making in automation
- ServiceNow ticketing system integration
- Complete audit trails and reporting

## Troubleshooting

If you encounter issues during setup:

1. Verify all required parameters are correctly specified
2. Ensure network connectivity to all target systems
3. Confirm authentication credentials are valid
4. Check that all prerequisite services are running

## Support

This project extends LB2961: Introduction to AI-Driven Ansible Automation. For additional support and documentation, refer to the original course materials.

## Contributing

When contributing to this project:
1. Follow existing code structure and naming conventions
2. Test all changes in a development environment
3. Update documentation as needed
4. Ensure compatibility with the base LB2961 framework

## License

Please refer to your organization's licensing requirements for this automation framework.