.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$else;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$package;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "else"
.end annotation


# instance fields
.field public final n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$package;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$else;->n:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getSourceNumber()Ljava/lang/Number;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$else;->n:Ljava/math/BigInteger;

    return-object v0
.end method
