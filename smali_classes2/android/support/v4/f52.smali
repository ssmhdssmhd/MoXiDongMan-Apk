.class public final Landroid/support/v4/f52;
.super Landroid/support/v4/xn1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/xn1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic catch(Landroid/support/v4/wn1;)Landroid/support/v4/oc1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/f52;->while(Landroid/support/v4/wn1;)Landroid/support/v4/e52;

    move-result-object p1

    return-object p1
.end method

.method public while(Landroid/support/v4/wn1;)Landroid/support/v4/e52;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/support/v4/xn1;->for(Landroid/support/v4/wn1;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tel:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "TEL:"

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const/16 v1, 0x3f

    .line 4
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_2

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_1
    new-instance v1, Landroid/support/v4/e52;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v4/e52;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
