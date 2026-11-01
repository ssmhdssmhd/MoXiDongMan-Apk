.class final Lfreemarker/core/g1;
.super Lfreemarker/core/const;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;

.field private final if:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Ljava/text/NumberFormat;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/const;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/g1;->do:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lfreemarker/core/g1;->if:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Number;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ob2;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/g1;->if:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/ob2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This format can\'t format the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " number. Reason: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/support/v4/ob2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/g1;->do:Ljava/lang/String;

    return-object v0
.end method

.method public else()Ljava/text/NumberFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/g1;->if:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public for(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ob2;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lfreemarker/core/e4;->for(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Number;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lfreemarker/core/g1;->case(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
