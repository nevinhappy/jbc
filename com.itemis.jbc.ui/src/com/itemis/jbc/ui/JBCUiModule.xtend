/*
 * generated by Xtext 2.11.0
 */
package com.itemis.jbc.ui

import com.itemis.jbc.ui.commands.CreateClassFromJBCHandler
import com.itemis.jbc.ui.custom.JBCDocumentProvider
import com.itemis.jbc.ui.custom.JBCResourceServiceProvider
import com.itemis.jbc.ui.custom.JBCTokenToAttributeIdMapper
import com.itemis.jbc.ui.highlight.JBCHighlightingConfiguration
import com.itemis.jbc.ui.highlight.JBCSemanticHighlightingCalculator
import com.itemis.jbc.ui.hover.JBCHoverProvider
import com.itemis.jbc.ui.outline.JBCDocumentationProvider
import org.eclipse.xtend.lib.annotations.FinalFieldsConstructor
import org.eclipse.xtext.documentation.IEObjectDocumentationProvider
import org.eclipse.xtext.ide.editor.syntaxcoloring.ISemanticHighlightingCalculator
import org.eclipse.xtext.resource.IResourceServiceProvider
import org.eclipse.xtext.ui.editor.IXtextEditorCallback
import org.eclipse.xtext.ui.editor.IXtextEditorCallback.NullImpl
import org.eclipse.xtext.ui.editor.hover.IEObjectHoverProvider
import org.eclipse.xtext.ui.editor.model.XtextDocumentProvider
import org.eclipse.xtext.ui.editor.syntaxcoloring.AbstractAntlrTokenToAttributeIdMapper
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfiguration

/**
 * Use this class to register components to be used within the Eclipse IDE.
 */
@FinalFieldsConstructor
class JBCUiModule extends AbstractJBCUiModule {

	def Class<? extends IHighlightingConfiguration> bindIHighlightingConfiguration() { JBCHighlightingConfiguration }

	def Class<? extends AbstractAntlrTokenToAttributeIdMapper> bindAbstractAntlrTokenToAttributeIdMapper() {
		JBCTokenToAttributeIdMapper
	}

	def Class<? extends XtextDocumentProvider> bindXtextDocumentProvider() { JBCDocumentProvider }

	def Class<? extends CreateClassFromJBCHandler> bindCreateClassFromJBCHandler() { CreateClassFromJBCHandler }

	def Class<? extends IEObjectHoverProvider> bindIEObjectHoverProvider() { JBCHoverProvider }

	def Class<? extends IEObjectDocumentationProvider> bindIEObjectDocumentationProvider() { JBCDocumentationProvider }

	def Class<? extends IResourceServiceProvider> bindIResourceServiceProvider() { JBCResourceServiceProvider }

	def Class<? extends ISemanticHighlightingCalculator> bindISemanticHighlightingCalculator() {
		JBCSemanticHighlightingCalculator
	}

	override Class<? extends IXtextEditorCallback> bindIXtextEditorCallback() { NullImpl }

}
