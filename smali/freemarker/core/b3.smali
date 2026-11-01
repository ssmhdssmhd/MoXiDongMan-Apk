.class public Lfreemarker/core/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/TemplateClassResolver;


# instance fields
.field private final do:Ljava/util/Set;

.field private final for:Ljava/util/Set;

.field private final if:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    iput-object p1, p0, Lfreemarker/core/b3;->do:Ljava/util/Set;

    if-eqz p2, :cond_3

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lfreemarker/core/b3;->for:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/b3;->if:Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "/"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v0, "*"

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lfreemarker/core/b3;->if:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lfreemarker/core/b3;->for:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lfreemarker/core/b3;->for:Ljava/util/Set;

    .line 13
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lfreemarker/core/b3;->if:Ljava/util/List;

    :cond_4
    return-void
.end method

.method private do(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lfreemarker/core/b3;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lfreemarker/core/b3;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public if(Lfreemarker/template/static;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x25

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "/"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const-string v1, "%2e"

    const-string v4, "."

    const/4 v5, 0x0

    .line 3
    invoke-static {p1, v1, v4, v5, v5}, Lfreemarker/template/utility/super;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v6, "%2E"

    .line 4
    invoke-static {v1, v6, v4, v5, v5}, Lfreemarker/template/utility/super;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%2f"

    .line 5
    invoke-static {v1, v4, v2, v5, v5}, Lfreemarker/template/utility/super;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%2F"

    .line 6
    invoke-static {v1, v4, v2, v5, v5}, Lfreemarker/template/utility/super;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%5c"

    const-string v6, "\\"

    .line 7
    invoke-static {v1, v4, v6, v5, v5}, Lfreemarker/template/utility/super;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "%5C"

    .line 8
    invoke-static {v1, v4, v6, v5, v5}, Lfreemarker/template/utility/super;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    const-string v4, ".."

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_7

    add-int/lit8 v5, v4, -0x1

    if-ltz v5, :cond_3

    .line 10
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_1
    add-int/lit8 v4, v4, 0x2

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    const/16 v4, 0x5c

    const/16 v6, 0x2f

    if-eq v5, v3, :cond_5

    if-eq v5, v6, :cond_5

    if-ne v5, v4, :cond_7

    :cond_5
    if-eq v1, v3, :cond_6

    if-eq v1, v6, :cond_6

    if-ne v1, v4, :cond_7

    :cond_6
    return-object v0

    .line 12
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public resolve(Ljava/lang/String;Lfreemarker/core/d0;Lfreemarker/template/static;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lfreemarker/core/b3;->if(Lfreemarker/template/static;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lfreemarker/core/b3;->for:Ljava/util/Set;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/core/b3;->do(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    sget-object v0, Lfreemarker/core/TemplateClassResolver;->SAFER_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    invoke-interface {v0, p1, p2, p3}, Lfreemarker/core/TemplateClassResolver;->resolve(Ljava/lang/String;Lfreemarker/core/d0;Lfreemarker/template/static;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object p3, p0, Lfreemarker/core/b3;->do:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    :try_start_0
    invoke-static {p1}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p3, Landroid/support/v4/nl2;

    invoke-direct {p3, p1, p2}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;)V

    throw p3

    .line 9
    :cond_2
    new-instance p3, Landroid/support/v4/nl2;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Instantiating "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, " is not allowed in the template for security reasons. (If you run into this problem when using ?new in a template, you may want to check the \""

    aput-object v1, v0, p1

    const/4 p1, 0x3

    const-string v1, "new_builtin_class_resolver"

    aput-object v1, v0, p1

    const/4 p1, 0x4

    const-string v1, "\" setting in the FreeMarker configuration.)"

    aput-object v1, v0, p1

    invoke-direct {p3, p2, v0}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p3
.end method
