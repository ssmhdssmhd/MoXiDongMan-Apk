.class final Lfreemarker/ext/beans/continue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/continue$new;
    }
.end annotation


# instance fields
.field private final do:Lfreemarker/ext/beans/volatile;

.field private final for:Z

.field private if:Lfreemarker/ext/beans/volatile;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/ext/beans/continue;->for:Z

    .line 3
    new-instance v0, Lfreemarker/ext/beans/abstract;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/abstract;-><init>(Z)V

    iput-object v0, p0, Lfreemarker/ext/beans/continue;->do:Lfreemarker/ext/beans/volatile;

    return-void
.end method

.method private break()Landroid/support/v4/al2;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/ext/beans/continue$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/ext/beans/continue$do;-><init>(Lfreemarker/ext/beans/continue;Ljava/lang/Object;)V

    return-object v0
.end method

.method private catch(Lfreemarker/ext/beans/import;Lfreemarker/ext/beans/import;Ljava/util/List;)[Ljava/lang/Object;
    .locals 3

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lfreemarker/ext/beans/import;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "When trying to call the non-varargs overloads:\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, p3}, Lfreemarker/ext/beans/continue;->class(Lfreemarker/ext/beans/import;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string p3, "\nWhen trying to call the varargs overloads:\n"

    aput-object p3, v0, p1

    const/4 p1, 0x3

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p2, p3}, Lfreemarker/ext/beans/continue;->class(Lfreemarker/ext/beans/import;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Lfreemarker/ext/beans/continue;->class(Lfreemarker/ext/beans/import;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {p0, p1, p3}, Lfreemarker/ext/beans/continue;->class(Lfreemarker/ext/beans/import;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private class(Lfreemarker/ext/beans/import;Ljava/util/List;)[Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lfreemarker/ext/beans/import;->new()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lfreemarker/ext/beans/import;->for()Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "."

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "\nThe FTL type of the argument values were: "

    aput-object v7, v1, v3

    .line 3
    invoke-direct {p0, p2}, Lfreemarker/ext/beans/continue;->goto(Ljava/util/List;)Landroid/support/v4/al2;

    move-result-object p2

    aput-object p2, v1, v6

    aput-object p1, v1, v5

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    aput-object v1, v2, v6

    if-eqz v0, :cond_1

    new-array v4, v5, [Ljava/lang/Object;

    const-string p2, "\nThe Java type of the argument values were: "

    aput-object p2, v4, v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/continue;->this([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    :cond_1
    aput-object v4, v2, v5

    return-object v2
.end method

.method public static synthetic do(Lfreemarker/ext/beans/continue;)Lfreemarker/ext/beans/volatile;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/beans/continue;->do:Lfreemarker/ext/beans/volatile;

    return-object p0
.end method

.method private for(Lfreemarker/ext/beans/transient;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/continue;->do:Lfreemarker/ext/beans/volatile;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/volatile;->do(Lfreemarker/ext/beans/transient;)V

    .line 2
    invoke-virtual {p1}, Lfreemarker/ext/beans/transient;->goto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lfreemarker/ext/beans/continue;->if:Lfreemarker/ext/beans/volatile;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lfreemarker/ext/beans/interface;

    iget-boolean v1, p0, Lfreemarker/ext/beans/continue;->for:Z

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/interface;-><init>(Z)V

    iput-object v0, p0, Lfreemarker/ext/beans/continue;->if:Lfreemarker/ext/beans/volatile;

    .line 5
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/beans/continue;->if:Lfreemarker/ext/beans/volatile;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/volatile;->do(Lfreemarker/ext/beans/transient;)V

    :cond_1
    return-void
.end method

.method private goto(Ljava/util/List;)Landroid/support/v4/al2;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateModel;

    invoke-static {v2}, Lfreemarker/template/utility/if;->case(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lfreemarker/ext/beans/continue$if;

    invoke-direct {p1, p0, v0}, Lfreemarker/ext/beans/continue$if;-><init>(Lfreemarker/ext/beans/continue;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic if(Lfreemarker/ext/beans/continue;)Lfreemarker/ext/beans/volatile;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/beans/continue;->if:Lfreemarker/ext/beans/volatile;

    return-object p0
.end method

.method private this([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lfreemarker/ext/beans/continue$for;

    invoke-direct {p1, p0, v0}, Lfreemarker/ext/beans/continue$for;-><init>(Lfreemarker/ext/beans/continue;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private try(Lfreemarker/core/z4;Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lfreemarker/ext/beans/continue;->do:Lfreemarker/ext/beans/volatile;

    invoke-virtual {v2}, Lfreemarker/ext/beans/volatile;->else()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/beans/this;

    .line 6
    invoke-virtual {v3}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v3}, Lfreemarker/ext/beans/this;->goto()Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1

    .line 8
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-object v5, v4, v3

    .line 9
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    :cond_1
    if-nez v5, :cond_2

    .line 11
    array-length v3, v4

    if-ge v0, v3, :cond_2

    .line 12
    aget-object v5, v4, v0

    :cond_2
    if-eqz v5, :cond_0

    .line 13
    const-class v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p2, "A markup output value can be converted to markup string like value?markup_string. But consider if the Java method whose argument it will be can handle markup strings properly."

    .line 14
    invoke-virtual {p1, p2}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public case(Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Lfreemarker/ext/beans/transient;

    invoke-direct {v1, p1, v0}, Lfreemarker/ext/beans/transient;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lfreemarker/ext/beans/continue;->for(Lfreemarker/ext/beans/transient;)V

    return-void
.end method

.method public else(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/finally;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/continue;->do:Lfreemarker/ext/beans/volatile;

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/beans/volatile;->try(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/extends;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/ext/beans/finally;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/ext/beans/finally;

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/ext/beans/continue;->if:Lfreemarker/ext/beans/volatile;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p1, p2}, Lfreemarker/ext/beans/volatile;->try(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/extends;

    move-result-object p2

    .line 6
    instance-of v1, p2, Lfreemarker/ext/beans/finally;

    if-eqz v1, :cond_2

    .line 7
    check-cast p2, Lfreemarker/ext/beans/finally;

    return-object p2

    :cond_1
    const/4 p2, 0x0

    .line 8
    :cond_2
    new-instance v1, Lfreemarker/core/z4;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast v0, Lfreemarker/ext/beans/import;

    check-cast p2, Lfreemarker/ext/beans/import;

    .line 9
    invoke-direct {p0, v0, p2, p1}, Lfreemarker/ext/beans/continue;->catch(Lfreemarker/ext/beans/import;Lfreemarker/ext/beans/import;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    const-string v0, "\nThe matching overload was searched among these members:\n"

    aput-object v0, v2, p2

    const/4 p2, 0x2

    .line 10
    invoke-direct {p0}, Lfreemarker/ext/beans/continue;->break()Landroid/support/v4/al2;

    move-result-object v0

    aput-object v0, v2, p2

    invoke-direct {v1, v2}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 11
    iget-boolean p2, p0, Lfreemarker/ext/beans/continue;->for:Z

    if-nez p2, :cond_3

    const-string p2, "You seem to use BeansWrapper with incompatibleImprovements set below 2.3.21. If you think this error is unfounded, enabling 2.3.21 fixes may helps. See version history for more."

    .line 12
    invoke-virtual {v1, p2}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    .line 13
    :cond_3
    invoke-direct {p0, v1, p1}, Lfreemarker/ext/beans/continue;->try(Lfreemarker/core/z4;Ljava/util/List;)V

    .line 14
    new-instance p1, Landroid/support/v4/vl2;

    invoke-direct {p1, v1}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/z4;)V

    throw p1
.end method

.method public new(Ljava/lang/reflect/Constructor;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Lfreemarker/ext/beans/transient;

    invoke-direct {v1, p1, v0}, Lfreemarker/ext/beans/transient;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lfreemarker/ext/beans/continue;->for(Lfreemarker/ext/beans/transient;)V

    return-void
.end method
