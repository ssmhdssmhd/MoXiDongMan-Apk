.class Lfreemarker/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/e$try;,
        Lfreemarker/core/e$break;,
        Lfreemarker/core/e$native;,
        Lfreemarker/core/e$case;,
        Lfreemarker/core/e$if;,
        Lfreemarker/core/e$class;,
        Lfreemarker/core/e$catch;,
        Lfreemarker/core/e$for;,
        Lfreemarker/core/e$throw;,
        Lfreemarker/core/e$while;,
        Lfreemarker/core/e$import;,
        Lfreemarker/core/e$super;,
        Lfreemarker/core/e$final;,
        Lfreemarker/core/e$const;,
        Lfreemarker/core/e$this;,
        Lfreemarker/core/e$goto;,
        Lfreemarker/core/e$else;,
        Lfreemarker/core/e$new;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static case(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p1

    move-object v4, p2

    move-object v11, p3

    .line 1
    :try_start_0
    invoke-static/range {v0 .. v11}, Lfreemarker/core/f0;->catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z

    move-result p0
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Landroid/support/v4/vl2;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "This error has occurred when comparing sequence item at 0-based index "

    aput-object v1, p3, v0

    const/4 v0, 0x1

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    const/4 p0, 0x2

    const-string v0, " to the searched item:\n"

    aput-object v0, p3, p0

    const/4 p0, 0x3

    new-instance v0, Landroid/support/v4/dl2;

    invoke-direct {v0, p1}, Landroid/support/v4/dl2;-><init>(Ljava/lang/Throwable;)V

    aput-object v0, p3, p0

    invoke-direct {p2, p1, p3}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p2
.end method

.method public static synthetic do(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/e;->case(ILfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p0

    return p0
.end method

.method public static synthetic for(Lfreemarker/template/TemplateModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/core/e;->new(Lfreemarker/template/TemplateModel;)V

    return-void
.end method

.method public static synthetic if(Lfreemarker/template/TemplateModel;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lfreemarker/core/e;->try(Lfreemarker/template/TemplateModel;)Z

    move-result p0

    return p0
.end method

.method private static new(Lfreemarker/template/TemplateModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of p0, p0, Lfreemarker/core/q3;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Landroid/support/v4/vl2;

    const-string v0, "The input sequence is a right-unbounded numerical range, thus, it\'s infinitely long, and can\'t processed with this built-in."

    invoke-direct {p0, v0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static try(Lfreemarker/template/TemplateModel;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lfreemarker/ext/beans/super;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lfreemarker/ext/beans/super;

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/beans/super;->break()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
