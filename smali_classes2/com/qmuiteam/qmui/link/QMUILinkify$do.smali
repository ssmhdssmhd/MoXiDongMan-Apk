.class final Lcom/qmuiteam/qmui/link/QMUILinkify$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/link/QMUILinkify$WebUrlMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/link/QMUILinkify$goto;->do()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
