.class final Lfreemarker/ext/beans/OverloadedNumberUtil$break;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$package;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "break"
.end annotation


# instance fields
.field private final n:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$package;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$break;->n:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$break;->n:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$break;->n:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSourceNumber()Ljava/lang/Number;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$break;->n:Ljava/lang/Double;

    return-object v0
.end method
