.class public final Landroid/support/v4/g52;
.super Landroid/support/v4/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ep<",
        "Landroid/support/v4/g52;",
        ">;"
    }
.end annotation


# instance fields
.field private final for:Lfreemarker/core/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/ep;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Landroid/support/v4/g52;->for:Lfreemarker/core/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic getOutputFormat()Lfreemarker/core/y1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/g52;->try()Lfreemarker/core/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic if()Lfreemarker/core/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/g52;->try()Lfreemarker/core/n;

    move-result-object v0

    return-object v0
.end method

.method public try()Lfreemarker/core/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/g52;->for:Lfreemarker/core/n;

    return-object v0
.end method
