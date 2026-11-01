.class final Lfreemarker/ext/xml/for$do;
.super Lorg/jaxen/dom4j/Dom4jXPath;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/xml/Navigator$XPathEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/xml/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/jaxen/dom4j/Dom4jXPath;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public selectNodes(Ljava/lang/Object;Lorg/jaxen/NamespaceContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/for$do;->getContext(Ljava/lang/Object;)Lorg/jaxen/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jaxen/ContextSupport;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/ext/xml/for$do;->selectNodesForContext(Lorg/jaxen/Context;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Landroid/support/v4/k52;

    invoke-direct {p2, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
