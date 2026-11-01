.class final Lfreemarker/ext/jdom/NodeListModel$const;
.super Lorg/jaxen/jdom/JDOMXPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "const"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jdom/NodeListModel$const$do;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/jaxen/jdom/JDOMXPath;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jdom/NodeListModel$const;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$const$do;

    invoke-direct {v1, p2}, Lfreemarker/ext/jdom/NodeListModel$const$do;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/jaxen/ContextSupport;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/ext/jdom/NodeListModel$const;->selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
