.class final Lfreemarker/ext/beans/OverloadedNumberUtil$while;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "while"
.end annotation


# instance fields
.field private final w:I


# direct methods
.method public constructor <init>(Ljava/lang/Float;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$native;-><init>(Ljava/lang/Float;)V

    .line 2
    iput p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$while;->w:I

    return-void
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$while;->w:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$while;->w:I

    int-to-long v0, v0

    return-wide v0
.end method
