.class public abstract Lfreemarker/core/f4;
.super Landroid/support/v4/o52;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/o52;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract for(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;,
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public if(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/f4;->for(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract new()Z
.end method

.method public final try(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/support/v4/rc1;

    const-string v0, "Number formats currenly don\'t support parsing"

    invoke-direct {p1, v0}, Landroid/support/v4/rc1;-><init>(Ljava/lang/String;)V

    throw p1
.end method
