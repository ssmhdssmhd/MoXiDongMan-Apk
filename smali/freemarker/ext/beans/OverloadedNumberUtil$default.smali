.class Lfreemarker/ext/beans/OverloadedNumberUtil$default;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$finally;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "default"
.end annotation


# instance fields
.field private final w:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$finally;-><init>(Ljava/lang/Long;)V

    .line 2
    iput p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$default;->w:I

    return-void
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$default;->w:I

    return v0
.end method
