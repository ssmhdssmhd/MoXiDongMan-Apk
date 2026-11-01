package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Collector;

/* loaded from: classes3.dex */
abstract class StructuralEvaluator extends Evaluator {
    public Evaluator evaluator;

    public static class Has extends StructuralEvaluator {
        public final Collector.FirstFinder finder;

        public Has(Evaluator evaluator) {
            this.evaluator = evaluator;
            this.finder = new Collector.FirstFinder(evaluator);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i = 0; i < element2.childNodeSize(); i++) {
                Node nodeChildNode = element2.childNode(i);
                if ((nodeChildNode instanceof Element) && this.finder.find(element2, (Element) nodeChildNode) != null) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":has(%s)", this.evaluator);
        }
    }

    public static class ImmediateParent extends StructuralEvaluator {
        public ImmediateParent(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementParent;
            return (element == element2 || (elementParent = element2.parent()) == null || !this.evaluator.matches(element, elementParent)) ? false : true;
        }

        public String toString() {
            return String.format("%s > ", this.evaluator);
        }
    }

    public static class ImmediatePreviousSibling extends StructuralEvaluator {
        public ImmediatePreviousSibling(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementPreviousElementSibling;
            return (element == element2 || (elementPreviousElementSibling = element2.previousElementSibling()) == null || !this.evaluator.matches(element, elementPreviousElementSibling)) ? false : true;
        }

        public String toString() {
            return String.format("%s + ", this.evaluator);
        }
    }

    public static class Not extends StructuralEvaluator {
        public Not(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return !this.evaluator.matches(element, element2);
        }

        public String toString() {
            return String.format(":not(%s)", this.evaluator);
        }
    }

    public static class Parent extends StructuralEvaluator {
        public Parent(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element elementParent = element2.parent(); elementParent != null; elementParent = elementParent.parent()) {
                if (this.evaluator.matches(element, elementParent)) {
                    return true;
                }
                if (elementParent == element) {
                    break;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ", this.evaluator);
        }
    }

    public static class PreviousSibling extends StructuralEvaluator {
        public PreviousSibling(Evaluator evaluator) {
            this.evaluator = evaluator;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element elementPreviousElementSibling = element2.previousElementSibling(); elementPreviousElementSibling != null; elementPreviousElementSibling = elementPreviousElementSibling.previousElementSibling()) {
                if (this.evaluator.matches(element, elementPreviousElementSibling)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ~ ", this.evaluator);
        }
    }

    public static class Root extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element == element2;
        }
    }
}
