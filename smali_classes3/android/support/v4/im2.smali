.class public Landroid/support/v4/im2;
.super Landroid/support/v4/um2;
.source "SourceFile"


# static fields
.field public static break:I

.field public static catch:Ljava/lang/String;

.field public static goto:[I

.field public static this:[I


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Landroid/support/v4/um2;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/im2;->goto:[I

    const/4 v1, 0x0

    const v2, 0x22222222

    aput v2, v0, v1

    const v3, 0x222222

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const v5, 0x22220222

    const/4 v6, 0x3

    aput v5, v0, v6

    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v7, 0x5

    aput v2, v0, v7

    const/4 v8, 0x6

    aput v2, v0, v8

    const/4 v9, 0x7

    aput v2, v0, v9

    const/16 v10, 0x8

    aput v2, v0, v10

    const/16 v10, 0x9

    aput v2, v0, v10

    const/16 v10, 0xa

    aput v2, v0, v10

    const/16 v10, 0xb

    aput v2, v0, v10

    const/16 v10, 0xc

    aput v2, v0, v10

    const/16 v10, 0xd

    aput v2, v0, v10

    const/16 v10, 0xe

    aput v2, v0, v10

    const/16 v10, 0xf

    aput v2, v0, v10

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v10, 0x11

    const/high16 v11, 0x6000000

    aput v11, v0, v10

    const/16 v10, 0x12

    aput v1, v0, v10

    const/16 v10, 0x13

    aput v1, v0, v10

    const/16 v10, 0x14

    const v11, 0x44444430

    aput v11, v0, v10

    const/16 v10, 0x15

    const v11, 0x11111155

    aput v11, v0, v10

    const/16 v10, 0x16

    const v11, 0x11111111

    aput v11, v0, v10

    const/16 v10, 0x17

    aput v11, v0, v10

    const/16 v10, 0x18

    const v11, 0x33331311

    aput v11, v0, v10

    const/16 v10, 0x19

    const v11, 0x33333333

    aput v11, v0, v10

    const/16 v10, 0x1a

    aput v11, v0, v10

    const/16 v10, 0x1b

    aput v11, v0, v10

    const/16 v10, 0x1c

    aput v11, v0, v10

    const/16 v10, 0x1d

    aput v11, v0, v10

    const/16 v10, 0x1e

    aput v11, v0, v10

    const/16 v10, 0x1f

    const v11, 0x3333333

    aput v11, v0, v10

    new-array v0, v8, [I

    sput-object v0, Landroid/support/v4/im2;->this:[I

    const v8, 0x14333011

    aput v8, v0, v1

    const v1, 0x22111111

    aput v1, v0, v4

    const v1, 0x10122222

    aput v1, v0, v3

    const v1, 0x11111000

    aput v1, v0, v6

    const v1, 0x101115

    aput v1, v0, v5

    aput v2, v0, v7

    const-string v0, "x-euc-tw"

    sput-object v0, Landroid/support/v4/im2;->catch:Ljava/lang/String;

    sput v9, Landroid/support/v4/im2;->break:I

    return-void
.end method


# virtual methods
.method public case()[I
    .locals 1

    sget-object v0, Landroid/support/v4/im2;->this:[I

    return-object v0
.end method

.method public do()[I
    .locals 1

    sget-object v0, Landroid/support/v4/im2;->goto:[I

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/im2;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public try()I
    .locals 1

    sget v0, Landroid/support/v4/im2;->break:I

    return v0
.end method
