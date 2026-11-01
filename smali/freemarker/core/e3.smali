.class abstract Lfreemarker/core/e3;
.super Lfreemarker/core/v3;
.source "SourceFile"


# instance fields
.field public final:Landroid/support/v4/e91;

.field public super:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/v3;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e3;->final:Landroid/support/v4/e91;

    const-string v1, "outputFormat was null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/e3;->s(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public r(Landroid/support/v4/e91;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lfreemarker/core/e3;->final:Landroid/support/v4/e91;

    .line 3
    iput p2, p0, Lfreemarker/core/e3;->super:I

    return-void
.end method

.method public abstract s(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
