.class Lfreemarker/ext/beans/OverloadedNumberUtil$throws;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$finally;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "throws"
.end annotation


# instance fields
.field private final w:B


# direct methods
.method public constructor <init>(Ljava/lang/Long;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$finally;-><init>(Ljava/lang/Long;)V

    .line 2
    iput-byte p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$throws;->w:B

    return-void
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$throws;->w:B

    return v0
.end method
