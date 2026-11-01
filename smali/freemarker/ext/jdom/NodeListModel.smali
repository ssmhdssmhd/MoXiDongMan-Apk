.class public Lfreemarker/ext/jdom/NodeListModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModel;
.implements Lfreemarker/template/TemplateCollectionModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateScalarModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jdom/NodeListModel$const;,
        Lfreemarker/ext/jdom/NodeListModel$case;,
        Lfreemarker/ext/jdom/NodeListModel$throws;,
        Lfreemarker/ext/jdom/NodeListModel$final;,
        Lfreemarker/ext/jdom/NodeListModel$static;,
        Lfreemarker/ext/jdom/NodeListModel$switch;,
        Lfreemarker/ext/jdom/NodeListModel$goto;,
        Lfreemarker/ext/jdom/NodeListModel$catch;,
        Lfreemarker/ext/jdom/NodeListModel$class;,
        Lfreemarker/ext/jdom/NodeListModel$break;,
        Lfreemarker/ext/jdom/NodeListModel$this;,
        Lfreemarker/ext/jdom/NodeListModel$try;,
        Lfreemarker/ext/jdom/NodeListModel$new;,
        Lfreemarker/ext/jdom/NodeListModel$public;,
        Lfreemarker/ext/jdom/NodeListModel$else;,
        Lfreemarker/ext/jdom/NodeListModel$import;,
        Lfreemarker/ext/jdom/NodeListModel$native;,
        Lfreemarker/ext/jdom/NodeListModel$return;,
        Lfreemarker/ext/jdom/NodeListModel$super;,
        Lfreemarker/ext/jdom/NodeListModel$throw;,
        Lfreemarker/ext/jdom/NodeListModel$if;,
        Lfreemarker/ext/jdom/NodeListModel$while;,
        Lfreemarker/ext/jdom/NodeListModel$for;,
        Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;,
        Lfreemarker/ext/jdom/NodeListModel$NodeOperator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final break:Ljava/util/Map;

.field private static final case:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

.field private static final catch:Ljava/util/Map;

.field private static final class:I = 0x0

.field private static final const:I = 0x1

.field private static final else:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

.field private static final final:I = 0x2

.field private static final for:Lfreemarker/ext/jdom/NodeListModel$case;

.field private static final goto:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

.field private static final import:I = 0x6

.field private static final new:Lfreemarker/ext/jdom/NodeListModel;

.field private static final super:I = 0x3

.field private static final this:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

.field private static final throw:I = 0x4

.field private static final try:Ljava/util/Map;

.field private static final while:I = 0x5


# instance fields
.field private final do:Ljava/util/List;

.field private final if:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$case;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$case;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    .line 2
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->new:Lfreemarker/ext/jdom/NodeListModel;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->try:Ljava/util/Map;

    .line 4
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$while;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$while;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->case:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    .line 5
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$throw;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$throw;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->else:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    .line 6
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$if;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$if;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->goto:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    .line 7
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$for;

    invoke-direct {v0, v1}, Lfreemarker/ext/jdom/NodeListModel$for;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->this:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    .line 8
    invoke-static {}, Lfreemarker/ext/jdom/NodeListModel;->case()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->break:Ljava/util/Map;

    .line 9
    invoke-static {}, Lfreemarker/ext/jdom/NodeListModel;->else()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jdom/NodeListModel;->catch:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Map;Lfreemarker/ext/jdom/NodeListModel$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 16
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    :goto_0
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    return-void
.end method

.method private static final break(Ljava/lang/Object;)Lorg/jdom/Element;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/jdom/Element;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/jdom/Element;

    invoke-virtual {p0}, Lorg/jdom/Element;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lorg/jdom/Attribute;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lorg/jdom/Attribute;

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Lorg/jdom/Text;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lorg/jdom/Text;

    invoke-virtual {p0}, Lorg/jdom/Text;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p0, Lorg/jdom/ProcessingInstruction;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {p0}, Lorg/jdom/ProcessingInstruction;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    instance-of v0, p0, Lorg/jdom/Comment;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Lorg/jdom/Comment;

    invoke-virtual {p0}, Lorg/jdom/Comment;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    instance-of v0, p0, Lorg/jdom/EntityRef;

    if-eqz v0, :cond_5

    .line 12
    check-cast p0, Lorg/jdom/EntityRef;

    invoke-virtual {p0}, Lorg/jdom/EntityRef;->getParent()Lorg/jdom/Element;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final case()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$new;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$new;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_ancestor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$try;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$try;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_ancestorOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->goto:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    const-string v3, "_attributes"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->this:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    const-string v3, "_children"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$else;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$else;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_cname"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$goto;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$goto;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_content"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$this;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$this;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_descendant"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$break;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$break;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_descendantOrSelf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$class;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$class;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_document"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$catch;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$catch;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_doctype"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$super;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$super;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$import;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$import;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_nsprefix"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$native;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$native;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_nsuri"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$public;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$public;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_parent"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$return;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$return;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v3, "_qname"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$switch;

    invoke-direct {v1, v2}, Lfreemarker/ext/jdom/NodeListModel$switch;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    const-string v2, "_text"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private catch()Landroid/support/v4/ez1;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/jdom/NodeListModel;->break:Ljava/util/Map;

    const-string v1, "_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/jdom/NodeListModel$switch;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-static {v0, v1}, Lfreemarker/ext/jdom/NodeListModel;->goto(Lfreemarker/ext/jdom/NodeListModel$NodeOperator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private class()Lfreemarker/template/TemplateModel;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/ez1;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v2, v0, Lorg/jdom/Element;

    if-eqz v2, :cond_1

    const/16 v0, 0x65

    goto :goto_1

    .line 5
    :cond_1
    instance-of v2, v0, Lorg/jdom/Text;

    if-nez v2, :cond_9

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of v2, v0, Lorg/jdom/Attribute;

    if-eqz v2, :cond_3

    const/16 v0, 0x61

    goto :goto_1

    .line 7
    :cond_3
    instance-of v2, v0, Lorg/jdom/EntityRef;

    if-eqz v2, :cond_4

    const/16 v0, 0x6e

    goto :goto_1

    .line 8
    :cond_4
    instance-of v2, v0, Lorg/jdom/Document;

    if-eqz v2, :cond_5

    const/16 v0, 0x64

    goto :goto_1

    .line 9
    :cond_5
    instance-of v2, v0, Lorg/jdom/DocType;

    if-eqz v2, :cond_6

    const/16 v0, 0x74

    goto :goto_1

    .line 10
    :cond_6
    instance-of v2, v0, Lorg/jdom/Comment;

    if-eqz v2, :cond_7

    const/16 v0, 0x63

    goto :goto_1

    .line 11
    :cond_7
    instance-of v0, v0, Lorg/jdom/ProcessingInstruction;

    if-eqz v0, :cond_8

    const/16 v0, 0x70

    goto :goto_1

    :cond_8
    const/16 v0, 0x3f

    goto :goto_1

    :cond_9
    :goto_0
    const/16 v0, 0x78

    .line 12
    :goto_1
    new-instance v2, Landroid/support/v4/ez1;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [C

    aput-char v0, v4, v1

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static const([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object v0

    .line 3
    new-instance v1, Lfreemarker/template/native;

    invoke-direct {v1}, Lfreemarker/template/native;-><init>()V

    .line 4
    new-instance v2, Lfreemarker/ext/jdom/NodeListModel;

    invoke-direct {v2, v0}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Lorg/jdom/Document;)V

    const-string v0, "document"

    invoke-virtual {v1, v0, v2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v3, Lfreemarker/template/static;

    aget-object p0, p0, v2

    invoke-direct {v3, p0, v0}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    .line 7
    new-instance p0, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 8
    invoke-virtual {v3, v1, p0}, Lfreemarker/template/static;->t1(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 9
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 10
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public static synthetic do(Ljava/lang/Object;)Lorg/jdom/Element;
    .locals 0

    .line 1
    invoke-static {p0}, Lfreemarker/ext/jdom/NodeListModel;->break(Ljava/lang/Object;)Lorg/jdom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static final else()Ljava/util/Map;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "_copy"

    .line 9
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "_unique"

    .line 10
    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "_fname"

    .line 11
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "_ftype"

    .line 12
    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "_type"

    .line 13
    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "_registerNamespace"

    .line 14
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "_plaintext"

    .line 15
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "x_copy"

    .line 16
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x_unique"

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x_fname"

    .line 18
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x_ftype"

    .line 19
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x_type"

    .line 20
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic for(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    return-object p0
.end method

.method private static final goto(Lfreemarker/ext/jdom/NodeListModel$NodeOperator;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lfreemarker/ext/jdom/NodeListModel$NodeOperator;->operate(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 6
    aput-object v5, v1, v4

    .line 7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v6

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_3

    .line 9
    aget-object p1, v1, v2

    if-eqz p1, :cond_2

    .line 10
    aget-object p1, v1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public static synthetic if(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfreemarker/ext/jdom/NodeListModel;->try(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic new(Lfreemarker/ext/jdom/NodeListModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    return-object p0
.end method

.method private static final super(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v0, v3}, Ljava/util/HashSet;-><init>(IF)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method

.method private static final this(Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;Ljava/lang/String;Lorg/jdom/Namespace;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/util/List;

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5, p1, p2}, Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;->operate(Ljava/lang/Object;Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 6
    aput-object v5, v1, v4

    .line 7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v6

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 9
    aget-object p1, v1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method private static final try(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object v0

    .line 4
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 5
    sget-object p0, Lfreemarker/ext/jdom/NodeListModel;->new:Lfreemarker/ext/jdom/NodeListModel;

    return-object p0

    .line 6
    :cond_3
    new-instance p0, Lfreemarker/ext/jdom/NodeListModel;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    :try_start_0
    sget-object v0, Lfreemarker/ext/jdom/NodeListModel;->try:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/jdom/NodeListModel$const;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lfreemarker/ext/jdom/NodeListModel$const;

    invoke-direct {v1, p1}, Lfreemarker/ext/jdom/NodeListModel$const;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    iget-object v2, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lfreemarker/ext/jdom/NodeListModel$const;->do(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    invoke-static {v0, v1}, Lfreemarker/ext/jdom/NodeListModel;->try(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Landroid/support/v4/k52;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not evaulate XPath expression "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 11
    :cond_1
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "Exactly one argument required for execute() on NodeTemplate"

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 40
    :try_start_0
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jdom/NodeListModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lfreemarker/ext/jdom/NodeListModel;->new:Lfreemarker/ext/jdom/NodeListModel;

    return-object p1

    :cond_0
    if-eqz p1, :cond_d

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_6

    const/16 v5, 0x40

    if-eq v1, v5, :cond_3

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_1

    move-object v1, v4

    move-object v2, v1

    goto/16 :goto_2

    .line 5
    :cond_1
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->break:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    if-nez v1, :cond_2

    .line 6
    sget-object v2, Lfreemarker/ext/jdom/NodeListModel;->catch:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel;->catch()Landroid/support/v4/ez1;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_1
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel$static;

    invoke-direct {p1, p0, v4}, Lfreemarker/ext/jdom/NodeListModel$static;-><init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$do;)V

    return-object p1

    .line 10
    :pswitch_2
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel;->class()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel$throws;

    invoke-direct {p1, p0, v4}, Lfreemarker/ext/jdom/NodeListModel$throws;-><init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$do;)V

    return-object p1

    .line 12
    :pswitch_4
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel$final;

    invoke-direct {p1, p0, v4}, Lfreemarker/ext/jdom/NodeListModel$final;-><init>(Lfreemarker/ext/jdom/NodeListModel;Lfreemarker/ext/jdom/NodeListModel$do;)V

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel;

    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-static {v0}, Lfreemarker/ext/jdom/NodeListModel;->super(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p1

    .line 14
    :pswitch_6
    iget-object v2, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    monitor-enter v2

    .line 15
    :try_start_0
    new-instance p1, Lfreemarker/ext/jdom/NodeListModel;

    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/jdom/NodeListModel;-><init>(Ljava/util/List;Ljava/util/Map;)V

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    move-object v2, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->goto:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    goto :goto_0

    .line 19
    :cond_5
    :goto_1
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->else:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 22
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->this:Lfreemarker/ext/jdom/NodeListModel$NodeOperator;

    goto :goto_0

    :goto_2
    if-nez v4, :cond_7

    if-nez v1, :cond_7

    .line 23
    sget-object v1, Lfreemarker/ext/jdom/NodeListModel;->case:Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;

    goto :goto_3

    :cond_7
    move-object p1, v2

    :goto_3
    if-eqz v4, :cond_8

    .line 24
    iget-object p1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-static {v4, p1}, Lfreemarker/ext/jdom/NodeListModel;->goto(Lfreemarker/ext/jdom/NodeListModel$NodeOperator;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    .line 25
    :cond_8
    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    const/16 v3, 0x3a

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    add-int/lit8 v2, v3, 0x1

    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    monitor-enter v0

    .line 30
    :try_start_1
    iget-object v3, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/Namespace;

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_a

    const-string v0, "xml"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    sget-object p1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_4

    .line 34
    :cond_9
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered namespace prefix \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object p1, v2

    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 35
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 36
    :cond_b
    :goto_4
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-static {v1, p1, v2, v0}, Lfreemarker/ext/jdom/NodeListModel;->this(Lfreemarker/ext/jdom/NodeListModel$NamedNodeOperator;Ljava/lang/String;Lorg/jdom/Namespace;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 37
    :goto_5
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->if:Ljava/util/Map;

    invoke-static {p1, v0}, Lfreemarker/ext/jdom/NodeListModel;->try(Ljava/util/List;Ljava/util/Map;)Lfreemarker/ext/jdom/NodeListModel;

    move-result-object p1

    return-object p1

    .line 38
    :cond_c
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_d
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jdom/NodeListModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_1

    .line 6
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/Element;Ljava/io/Writer;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v3, v2, Lorg/jdom/Attribute;

    if-eqz v3, :cond_2

    .line 8
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/Attribute;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->do(Lorg/jdom/Attribute;Ljava/io/Writer;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 10
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfreemarker/ext/jdom/NodeListModel$case;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    instance-of v3, v2, Lorg/jdom/Text;

    if-eqz v3, :cond_4

    .line 12
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/Text;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/Text;Ljava/io/Writer;)V

    goto :goto_0

    .line 13
    :cond_4
    instance-of v3, v2, Lorg/jdom/Document;

    if-eqz v3, :cond_5

    .line 14
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/Document;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/Document;Ljava/io/Writer;)V

    goto :goto_0

    .line 15
    :cond_5
    instance-of v3, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v3, :cond_6

    .line 16
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V

    goto :goto_0

    .line 17
    :cond_6
    instance-of v3, v2, Lorg/jdom/Comment;

    if-eqz v3, :cond_7

    .line 18
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/Comment;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V

    goto :goto_0

    .line 19
    :cond_7
    instance-of v3, v2, Lorg/jdom/CDATA;

    if-eqz v3, :cond_8

    .line 20
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/CDATA;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V

    goto :goto_0

    .line 21
    :cond_8
    instance-of v3, v2, Lorg/jdom/DocType;

    if-eqz v3, :cond_9

    .line 22
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/DocType;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V

    goto :goto_0

    .line 23
    :cond_9
    instance-of v3, v2, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_a

    .line 24
    sget-object v3, Lfreemarker/ext/jdom/NodeListModel;->for:Lfreemarker/ext/jdom/NodeListModel$case;

    check-cast v2, Lorg/jdom/EntityRef;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/jdom/NodeListModel$case;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V

    goto/16 :goto_0

    .line 25
    :cond_a
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a core JDOM class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_b
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Landroid/support/v4/k52;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jdom/NodeListModel$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/jdom/NodeListModel$do;-><init>(Lfreemarker/ext/jdom/NodeListModel;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jdom/NodeListModel;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
