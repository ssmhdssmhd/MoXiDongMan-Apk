.class final Lorg/apache/commons/lang3/text/new$do;
.super Lorg/apache/commons/lang3/text/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final break:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/new;-><init>()V

    .line 2
    iput-char p1, p0, Lorg/apache/commons/lang3/text/new$do;->break:C

    return-void
.end method


# virtual methods
.method public else([CIII)I
    .locals 0

    .line 1
    iget-char p3, p0, Lorg/apache/commons/lang3/text/new$do;->break:C

    aget-char p1, p1, p2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
