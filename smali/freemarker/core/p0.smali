.class Lfreemarker/core/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# static fields
.field private static final case:Ljava/lang/String; = "include"

.field private static final else:Ljava/lang/String; = "import"

.field public static final for:Lfreemarker/core/p0;

.field private static final goto:Ljava/lang/String; = "exists"

.field public static final if:Lfreemarker/core/p0;

.field private static final new:Ljava/lang/String; = "encoding"

.field private static final try:Ljava/lang/String; = "parse"


# instance fields
.field private final do:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/core/p0;

    const-string v1, "get_optional_template"

    invoke-direct {v0, v1}, Lfreemarker/core/p0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/p0;->if:Lfreemarker/core/p0;

    .line 2
    new-instance v0, Lfreemarker/core/p0;

    const-string v1, "getOptionalTemplate"

    invoke-direct {v0, v1}, Lfreemarker/core/p0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/p0;->for:Lfreemarker/core/p0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    return-void
.end method

.method private do(Ljava/lang/String;Lfreemarker/template/TemplateModel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p2}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "The value of the "

    aput-object v3, v1, v2

    new-instance v2, Landroid/support/v4/fl2;

    invoke-direct {v2, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    const/4 v2, 0x2

    const-string v3, " option must be a boolean, but it was "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/support/v4/zk2;

    new-instance v4, Landroid/support/v4/bl2;

    invoke-direct {v4, p2}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v3, v4}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p2, 0x4

    const-string v2, "."

    aput-object v2, v1, p2

    invoke-static {v0, p1, v1}, Lfreemarker/core/b5;->static(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method private if(Ljava/lang/String;Lfreemarker/template/TemplateModel;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lfreemarker/template/TemplateScalarModel;

    const/4 p1, 0x0

    invoke-static {p2, p1, p1}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "The value of the "

    aput-object v3, v1, v2

    new-instance v2, Landroid/support/v4/fl2;

    invoke-direct {v2, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    const/4 v2, 0x2

    const-string v3, " option must be a string, but it was "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/support/v4/zk2;

    new-instance v4, Landroid/support/v4/bl2;

    invoke-direct {v4, p2}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v3, v4}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p2, 0x4

    const-string v2, "."

    aput-object v2, v1, p2

    invoke-static {v0, p1, v1}, Lfreemarker/core/b5;->static(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v2, :cond_b

    if-gt v0, v1, :cond_b

    .line 2
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v4, 0x0

    .line 3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/template/TemplateModel;

    .line 4
    instance-of v6, v5, Lfreemarker/template/TemplateScalarModel;

    if-eqz v6, :cond_9

    .line 5
    check-cast v5, Lfreemarker/template/TemplateScalarModel;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v5

    .line 6
    :try_start_0
    invoke-virtual {v3}, Lfreemarker/core/d0;->A1()Lfreemarker/template/static;

    move-result-object v7

    invoke-virtual {v7}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lfreemarker/core/d0;->x3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/support/v4/fx0; {:try_start_0 .. :try_end_0} :catch_1

    if-le v0, v2, :cond_1

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    .line 8
    instance-of v0, p1, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lfreemarker/template/TemplateHashModelEx;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    invoke-static {v0, v2, p1}, Lfreemarker/core/b5;->throws(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    :cond_1
    move-object p1, v6

    :goto_0
    const/4 v0, 0x3

    if-eqz p1, :cond_5

    .line 11
    invoke-static {p1}, Lfreemarker/template/utility/throw;->do(Lfreemarker/template/TemplateHashModelEx;)Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object p1

    const/4 v7, 0x1

    .line 12
    :goto_1
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 13
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;

    move-result-object v8

    .line 14
    invoke-interface {v8}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getKey()Lfreemarker/template/TemplateModel;

    move-result-object v9

    .line 15
    instance-of v10, v9, Lfreemarker/template/TemplateScalarModel;

    if-eqz v10, :cond_4

    .line 16
    check-cast v9, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v9}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-interface {v8}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getValue()Lfreemarker/template/TemplateModel;

    move-result-object v8

    const-string v10, "encoding"

    .line 18
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 19
    invoke-direct {p0, v10, v8}, Lfreemarker/core/p0;->if(Ljava/lang/String;Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v7, "parse"

    .line 20
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 21
    invoke-direct {p0, v7, v8}, Lfreemarker/core/p0;->do(Ljava/lang/String;Lfreemarker/template/TemplateModel;)Z

    move-result v7

    goto :goto_1

    .line 22
    :cond_3
    iget-object p1, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Unsupported option "

    aput-object v5, v3, v4

    new-instance v4, Landroid/support/v4/fl2;

    invoke-direct {v4, v9}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v2

    const-string v4, "; valid names are: "

    aput-object v4, v3, v1

    new-instance v1, Landroid/support/v4/fl2;

    invoke-direct {v1, v10}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, ", "

    aput-object v1, v3, v0

    const/4 v0, 0x5

    new-instance v1, Landroid/support/v4/fl2;

    invoke-direct {v1, v7}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "."

    aput-object v1, v3, v0

    invoke-static {p1, v2, v3}, Lfreemarker/core/b5;->static(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    .line 23
    :cond_4
    iget-object p1, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "All keys in the options hash must be strings, but found "

    aput-object v1, v0, v4

    new-instance v1, Landroid/support/v4/zk2;

    new-instance v3, Landroid/support/v4/bl2;

    invoke-direct {v3, v9}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v1, v3}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, v2

    invoke-static {p1, v2, v0}, Lfreemarker/core/b5;->static(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    :cond_5
    const/4 v7, 0x1

    .line 24
    :cond_6
    :try_start_1
    invoke-virtual {v3, v5, v6, v7, v2}, Lfreemarker/core/d0;->u2(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    new-instance v0, Lfreemarker/template/native;

    invoke-virtual {v3}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/native;-><init>(Lfreemarker/template/ObjectWrapper;)V

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    const-string v1, "exists"

    .line 26
    invoke-virtual {v0, v1, v2}, Lfreemarker/template/native;->put(Ljava/lang/String;Z)V

    if-eqz p1, :cond_8

    .line 27
    new-instance v1, Lfreemarker/core/p0$do;

    invoke-direct {v1, p0, p1}, Lfreemarker/core/p0$do;-><init>(Lfreemarker/core/p0;Lfreemarker/template/static;)V

    const-string v2, "include"

    invoke-virtual {v0, v2, v1}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    new-instance v1, Lfreemarker/core/p0$if;

    invoke-direct {v1, p0, v3, p1}, Lfreemarker/core/p0$if;-><init>(Lfreemarker/core/p0;Lfreemarker/core/d0;Lfreemarker/template/static;)V

    const-string p1, "import"

    invoke-virtual {v0, p1, v1}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-object v0

    :catch_0
    move-exception p1

    .line 29
    new-instance v3, Landroid/support/v4/vl2;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "I/O error when trying to load optional template "

    aput-object v6, v0, v4

    new-instance v4, Landroid/support/v4/fl2;

    invoke-direct {v4, v5}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v0, v2

    const-string v2, "; see cause exception"

    aput-object v2, v0, v1

    invoke-direct {v3, p1, v0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception p1

    .line 30
    new-instance v0, Landroid/support/v4/vl2;

    const-string v1, "Failed to convert template path to full path; see cause exception."

    invoke-direct {v0, p1, v1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_9
    iget-object p1, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lfreemarker/core/b5;->package(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No freemarer.core.Environment is associated to the current thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_b
    iget-object p1, p0, Lfreemarker/core/p0;->do:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lfreemarker/core/b5;->super(Ljava/lang/String;III)Landroid/support/v4/k52;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
