.class public Lfreemarker/ext/xml/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModel;
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateNodeModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/xml/if$if;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile break:Z

.field private static final case:Ljava/lang/Class;

.field private static final else:Lfreemarker/ext/xml/Navigator;

.field private static final goto:Lfreemarker/ext/xml/Navigator;

.field private static final new:Lfreemarker/log/if;

.field private static final this:Lfreemarker/ext/xml/Navigator;

.field private static final try:Ljava/lang/Class;


# instance fields
.field private final do:Lfreemarker/ext/xml/Navigator;

.field private for:Lfreemarker/ext/xml/do;

.field private final if:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.xml"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/if;->new:Lfreemarker/log/if;

    const-string v0, "org.w3c.dom.Node"

    .line 2
    invoke-static {v0}, Lfreemarker/ext/xml/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/if;->try:Ljava/lang/Class;

    const-string v0, "org.dom4j.Node"

    .line 3
    invoke-static {v0}, Lfreemarker/ext/xml/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/if;->case:Ljava/lang/Class;

    const-string v0, "Dom"

    .line 4
    invoke-static {v0}, Lfreemarker/ext/xml/if;->case(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/if;->else:Lfreemarker/ext/xml/Navigator;

    const-string v0, "Dom4j"

    .line 5
    invoke-static {v0}, Lfreemarker/ext/xml/if;->case(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/if;->goto:Lfreemarker/ext/xml/Navigator;

    const-string v0, "Jdom"

    .line 6
    invoke-static {v0}, Lfreemarker/ext/xml/if;->case(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/xml/if;->this:Lfreemarker/ext/xml/Navigator;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lfreemarker/ext/xml/if;->break:Z

    return-void
.end method

.method private constructor <init>(Lfreemarker/ext/xml/Navigator;Ljava/util/List;Lfreemarker/ext/xml/do;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    .line 15
    iput-object p2, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    .line 16
    iput-object p3, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    .line 6
    :goto_0
    sget-object v0, Lfreemarker/ext/xml/if;->try:Ljava/lang/Class;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p1, Lfreemarker/ext/xml/if;->else:Lfreemarker/ext/xml/Navigator;

    iput-object p1, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Lfreemarker/ext/xml/if;->case:Ljava/lang/Class;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lfreemarker/ext/xml/if;->goto:Lfreemarker/ext/xml/Navigator;

    iput-object p1, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    goto :goto_1

    .line 10
    :cond_3
    sget-object p1, Lfreemarker/ext/xml/if;->this:Lfreemarker/ext/xml/Navigator;

    iput-object p1, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    .line 11
    :goto_1
    invoke-direct {p0}, Lfreemarker/ext/xml/if;->for()Lfreemarker/ext/xml/do;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "nodes == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static case(Ljava/lang/String;)Lfreemarker/ext/xml/Navigator;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freemarker.ext.xml._"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Navigator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/Navigator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lfreemarker/ext/xml/if;->new:Lfreemarker/log/if;

    invoke-virtual {v1}, Lfreemarker/log/if;->throw()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load navigator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic do(Lfreemarker/ext/xml/if;)Lfreemarker/ext/xml/Navigator;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    return-object p0
.end method

.method private else(Lfreemarker/ext/xml/if;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    return-object v1

    .line 7
    :cond_4
    new-instance p1, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is ambiguos: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private for()Lfreemarker/ext/xml/do;
    .locals 1

    .line 1
    sget-boolean v0, Lfreemarker/ext/xml/if;->break:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "freemarker.ext.xml.try"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lfreemarker/ext/xml/if;->break:Z

    .line 5
    :cond_0
    new-instance v0, Lfreemarker/ext/xml/do;

    invoke-direct {v0}, Lfreemarker/ext/xml/do;-><init>()V

    return-object v0
.end method

.method public static synthetic if(Lfreemarker/ext/xml/if;Ljava/util/List;)Lfreemarker/ext/xml/if;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/if;->new(Ljava/util/List;)Lfreemarker/ext/xml/if;

    move-result-object p0

    return-object p0
.end method

.method private new(Ljava/util/List;)Lfreemarker/ext/xml/if;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v0}, Lfreemarker/ext/xml/do;->if()V

    .line 2
    new-instance v0, Lfreemarker/ext/xml/if;

    iget-object v1, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    iget-object v2, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-direct {v0, v1, p1, v2}, Lfreemarker/ext/xml/if;-><init>(Lfreemarker/ext/xml/Navigator;Ljava/util/List;Lfreemarker/ext/xml/do;)V

    return-object v0
.end method

.method private static final this(Ljava/util/List;)Ljava/util/List;
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

    :cond_1
    return-object v1
.end method

.method private static try(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lfreemarker/ext/xml/if;->new:Lfreemarker/log/if;

    invoke-virtual {v1}, Lfreemarker/log/if;->throw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lfreemarker/ext/xml/if;->new:Lfreemarker/log/if;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    iget-object v1, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v0, v1, p1, v2}, Lfreemarker/ext/xml/Navigator;->if(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/xml/if;->new(Ljava/util/List;)Lfreemarker/ext/xml/if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/k52;

    const-string v0, "Expecting exactly one argument - an XPath expression"

    invoke-direct {p1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/xml/if;->new(Ljava/util/List;)Lfreemarker/ext/xml/if;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v0, p1}, Lfreemarker/ext/xml/Navigator;->native(Ljava/lang/String;)Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    const-string v3, "_unique"

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p1, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    invoke-static {p1}, Lfreemarker/ext/xml/if;->this(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/ext/xml/if;->new(Ljava/util/List;)Lfreemarker/ext/xml/if;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v3, "_filterType"

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "_ftype"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "_registerNamespace"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-object v3, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v3}, Lfreemarker/ext/xml/do;->do()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v3}, Lfreemarker/ext/xml/do;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/xml/do;

    iput-object v3, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    new-instance p1, Lfreemarker/ext/xml/if$if;

    invoke-direct {p1, p0, v1}, Lfreemarker/ext/xml/if$if;-><init>(Lfreemarker/ext/xml/if;Lfreemarker/ext/xml/if$do;)V

    return-object p1

    :cond_3
    :goto_1
    const-string v3, ""

    if-nez v0, :cond_7

    const/16 v0, 0x3a

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v0, p1}, Lfreemarker/ext/xml/do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object p1, v1

    .line 15
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 16
    iget-object v0, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v0}, Lfreemarker/ext/xml/Navigator;->goto()Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 18
    :cond_5
    iget-object v0, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v0}, Lfreemarker/ext/xml/Navigator;->catch()Lfreemarker/ext/xml/NodeOperator;

    move-result-object v0

    move-object v1, p1

    goto :goto_3

    .line 19
    :cond_6
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not registered."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v2, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4, v1, v3, p1}, Lfreemarker/ext/xml/NodeOperator;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Landroid/support/v4/k52;

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 24
    :cond_8
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/if;->new(Ljava/util/List;)Lfreemarker/ext/xml/if;

    move-result-object p1

    return-object p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p0}, Lfreemarker/ext/xml/if;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 2
    iget-object v1, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lfreemarker/ext/xml/if;->do:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {v3, v2, v0}, Lfreemarker/ext/xml/Navigator;->else(Ljava/lang/Object;Ljava/io/StringWriter;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lfreemarker/template/TemplateSequenceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "_content"

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "_name"

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/if;

    const-string v1, "name"

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/xml/if;->else(Lfreemarker/ext/xml/if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeNamespace()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "_nsuri"

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/if;

    const-string v1, "namespace"

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/xml/if;->else(Lfreemarker/ext/xml/if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "_type"

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/if;

    const-string v1, "type"

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/xml/if;->else(Lfreemarker/ext/xml/if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lfreemarker/template/TemplateNodeModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "_parent"

    .line 1
    invoke-virtual {p0, v0}, Lfreemarker/ext/xml/if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateNodeModel;

    return-object v0
.end method

.method public goto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v0}, Lfreemarker/ext/xml/do;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v0}, Lfreemarker/ext/xml/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/xml/do;

    iput-object v0, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/xml/if;->for:Lfreemarker/ext/xml/do;

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/xml/do;->for(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/xml/if;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
