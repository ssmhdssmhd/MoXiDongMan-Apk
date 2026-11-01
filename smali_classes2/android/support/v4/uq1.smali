.class public final Landroid/support/v4/uq1;
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
    invoke-virtual {p0, p1}, Landroid/support/v4/uq1;->while(Landroid/support/v4/wn1;)Landroid/support/v4/s60;

    move-result-object p1

    return-object p1
.end method

.method public while(Landroid/support/v4/wn1;)Landroid/support/v4/s60;
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/support/v4/xn1;->for(Landroid/support/v4/wn1;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "smtp:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SMTP:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 8
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v9, v1

    goto :goto_0

    :cond_1
    move-object v9, v1

    move-object v8, v4

    goto :goto_0

    :cond_2
    move-object v8, v1

    move-object v9, v8

    .line 10
    :goto_0
    new-instance v0, Landroid/support/v4/s60;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/s60;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
