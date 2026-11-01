.class abstract Lfreemarker/core/strictfp;
.super Lfreemarker/core/return;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method

.method public static s(Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/h0;->private(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {v0, p1}, Lfreemarker/core/strictfp;->s(Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/strictfp;->r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public abstract r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
