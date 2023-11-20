import { useState } from 'react'

import CardProps from '../shared/CardProps'

export default function CardSelection({ colors }: Pick<CardProps, 'colors'>) {
	const [selectedIndex, setSelectedIndex] = useState<number | null>(null)

	return (
		<section className='card__selection'>
			<p>Choose your colour</p>
			<ul>
				{
					colors.map(
						(color, index) => (
							<li className={index === selectedIndex ? 'selection__selected' : ''} onClick={() => handleClick(index)}>
								<svg viewBox='0 0 40 40' fill={color}>
									<circle cx='20' cy='20' r='18' />
								</svg>
							</li>
						)
					)
				}
			</ul>
		</section>
	)

	function handleClick(index: number) { setSelectedIndex(index) }
}
