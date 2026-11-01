.class Lfreemarker/core/h$new;
.super Lfreemarker/core/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/strictfp;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/support/v4/az1;

    invoke-virtual {p2}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v1

    invoke-virtual {v1, p1}, Lfreemarker/core/else;->final(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-static {p0, p1, p2}, Lfreemarker/core/r2;->newMalformedNumberException(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/core/r2;

    move-result-object p1

    throw p1
.end method
