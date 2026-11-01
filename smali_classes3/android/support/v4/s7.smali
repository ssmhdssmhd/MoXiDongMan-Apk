.class public Landroid/support/v4/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/minidev/asm/FieldFilter;


# static fields
.field public static final do:Landroid/support/v4/s7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/s7;

    invoke-direct {v0}, Landroid/support/v4/s7;-><init>()V

    sput-object v0, Landroid/support/v4/s7;->do:Landroid/support/v4/s7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/reflect/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canUse(Ljava/lang/reflect/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canUse(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canWrite(Ljava/lang/reflect/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
