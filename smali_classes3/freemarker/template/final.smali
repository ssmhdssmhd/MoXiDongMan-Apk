.class public abstract Lfreemarker/template/final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lfreemarker/template/final;->do(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
