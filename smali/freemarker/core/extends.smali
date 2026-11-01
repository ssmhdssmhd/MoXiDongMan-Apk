.class abstract Lfreemarker/core/extends;
.super Lfreemarker/core/v3;
.source "SourceFile"


# instance fields
.field private final:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/v3;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/extends;->final:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->m1(Ljava/lang/String;)Lfreemarker/core/d1$do;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/extends;->s(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "There\'s no iteration in context that uses loop variable "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/fl2;

    iget-object v4, p0, Lfreemarker/core/extends;->final:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "."

    aput-object v3, v1, v2

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/extends;->final:Ljava/lang/String;

    return-void
.end method

.method public abstract s(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
