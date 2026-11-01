.class public Landroid/support/v4/om2;
.super Landroid/support/v4/um2;
.source "SourceFile"


# static fields
.field public static break:I

.field public static catch:Ljava/lang/String;

.field public static goto:[I

.field public static this:[I


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Landroid/support/v4/um2;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/om2;->goto:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    aput v1, v0, v2

    const/16 v4, 0x1000

    const/4 v5, 0x3

    aput v4, v0, v5

    const/high16 v4, 0x30000

    const/4 v6, 0x4

    aput v4, v0, v6

    const/16 v4, 0x40

    const/4 v7, 0x5

    aput v4, v0, v7

    const/4 v4, 0x6

    aput v1, v0, v4

    const/4 v8, 0x7

    aput v1, v0, v8

    const/16 v8, 0x8

    const/16 v9, 0x5000

    aput v9, v0, v8

    const/16 v8, 0x9

    aput v1, v0, v8

    const/16 v8, 0xa

    aput v1, v0, v8

    const/16 v8, 0xb

    aput v1, v0, v8

    const/16 v8, 0xc

    aput v1, v0, v8

    const/16 v8, 0xd

    aput v1, v0, v8

    const/16 v8, 0xe

    aput v1, v0, v8

    const/16 v8, 0xf

    aput v1, v0, v8

    const/16 v8, 0x10

    const v9, 0x22222222

    aput v9, v0, v8

    const/16 v8, 0x11

    aput v9, v0, v8

    const/16 v8, 0x12

    aput v9, v0, v8

    const/16 v8, 0x13

    aput v9, v0, v8

    const/16 v8, 0x14

    aput v9, v0, v8

    const/16 v8, 0x15

    aput v9, v0, v8

    const/16 v8, 0x16

    aput v9, v0, v8

    const/16 v8, 0x17

    aput v9, v0, v8

    const/16 v8, 0x18

    aput v9, v0, v8

    const/16 v8, 0x19

    aput v9, v0, v8

    const/16 v8, 0x1a

    aput v9, v0, v8

    const/16 v8, 0x1b

    aput v9, v0, v8

    const/16 v8, 0x1c

    aput v9, v0, v8

    const/16 v8, 0x1d

    aput v9, v0, v8

    const/16 v8, 0x1e

    aput v9, v0, v8

    const/16 v8, 0x1f

    aput v9, v0, v8

    new-array v0, v7, [I

    sput-object v0, Landroid/support/v4/om2;->this:[I

    const v7, 0x11000130

    aput v7, v0, v1

    const v1, 0x22221111

    aput v1, v0, v3

    const v1, 0x11411122

    aput v1, v0, v2

    const v1, 0x11151111

    aput v1, v0, v5

    const/16 v1, 0x2111

    aput v1, v0, v6

    const-string v0, "ISO-2022-KR"

    sput-object v0, Landroid/support/v4/om2;->catch:Ljava/lang/String;

    sput v4, Landroid/support/v4/om2;->break:I

    return-void
.end method


# virtual methods
.method public case()[I
    .locals 1

    sget-object v0, Landroid/support/v4/om2;->this:[I

    return-object v0
.end method

.method public do()[I
    .locals 1

    sget-object v0, Landroid/support/v4/om2;->goto:[I

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/om2;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public try()I
    .locals 1

    sget v0, Landroid/support/v4/om2;->break:I

    return v0
.end method
