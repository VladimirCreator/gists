import { compact } from 'lodash-es'

import { Section } from './UI/'
import { ProjectCard } from './ProjectCard'

type Props = {
	projects: any[]
}

export const ProjectSection: React.FC<Props> = props => {
	const { projects } = props

	const listOfProjects = projects.map(
		(project: any) => {
			const { title, description, techStack, link, wip } = project
			if (wip) {
				return null
			}
			return (
				<ProjectCard key={title}
					title={title} description={description}
					tags={techStack}
					link={link.href}
				/>
			)
		}
	)
	const listOfWipProjects = projects.map(
		(project: any) => {
			const { title, description, techStack, link, wip } = project
			if (!wip) {
				return null
			}
			return (
				<ProjectCard key={title}
					title={title} description={description}
					tags={techStack}
					link={link.href}
				/>
			)
		}
	)
	return (
		<Section className='scroll-mb-16 print-force-new-page'>
			<h2 className='font-bold text-xl'>
				Projects
			</h2>
			<div className='grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3 -mx-3 print:grid-cols-3 print:gap-2'
				children={compact(listOfProjects)}
			/>
			<h2 className='font-bold text-xl'>
				WIP Projects
			</h2>
			<div className='grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3 -mx-3 print:grid-cols-3 print:gap-2'
				children={compact(listOfWipProjects)}
			/>
		</Section>
	)
}
