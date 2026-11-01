.class Lfreemarker/ext/beans/OverloadedNumberUtil$static;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$switch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "static"
.end annotation


# instance fields
.field private final w:S


# direct methods
.method public constructor <init>(Ljava/lang/Integer;S)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$switch;-><init>(Ljava/lang/Integer;)V

    .line 2
    iput-short p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$static;->w:S

    return-void
.end method


# virtual methods
.method public shortValue()S
    .locals 1

    .line 1
    iget-short v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$static;->w:S

    return v0
.end method
