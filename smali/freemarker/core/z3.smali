.class public abstract Lfreemarker/core/z3;
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
.method public abstract case(Ljava/lang/String;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation
.end method

.method public abstract for(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;,
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public if(Lfreemarker/template/TemplateDateModel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/z3;->for(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract new()Z
.end method

.method public abstract try()Z
.end method
