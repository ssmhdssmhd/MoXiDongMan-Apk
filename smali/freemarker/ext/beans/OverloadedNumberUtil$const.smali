.class final Lfreemarker/ext/beans/OverloadedNumberUtil$const;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$super;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "const"
.end annotation


# instance fields
.field private final w:J


# direct methods
.method public constructor <init>(Ljava/lang/Double;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$super;-><init>(Ljava/lang/Double;)V

    .line 2
    iput-wide p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$const;->w:J

    return-void
.end method


# virtual methods
.method public longValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$const;->w:J

    return-wide v0
.end method
