.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$native;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$package;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "native"
.end annotation


# instance fields
.field private final n:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$package;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$native;->n:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public floatValue()F
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$native;->n:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSourceNumber()Ljava/lang/Number;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$native;->n:Ljava/lang/Float;

    return-object v0
.end method
