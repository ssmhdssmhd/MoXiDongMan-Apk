.class public Landroid/support/v4/tm2;
.super Landroid/support/v4/um2;
.source "SourceFile"


# static fields
.field public static break:I

.field public static catch:Ljava/lang/String;

.field public static goto:[I

.field public static this:[I


# direct methods
.method public constructor <init>()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/um2;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/tm2;->goto:[I

    const/4 v1, 0x0

    const v2, 0x11111111

    aput v2, v0, v1

    const v3, 0x111111

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aput v2, v0, v3

    const v5, 0x11110111

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

    const/16 v11, 0x9

    aput v2, v0, v11

    const/16 v12, 0xa

    aput v2, v0, v12

    const/16 v13, 0xb

    aput v2, v0, v13

    const/16 v14, 0xc

    aput v2, v0, v14

    const/16 v15, 0xd

    aput v2, v0, v15

    const/16 v16, 0xe

    aput v2, v0, v16

    const/16 v17, 0xf

    aput v2, v0, v17

    const v18, 0x33332222

    const/16 v19, 0x10

    aput v18, v0, v19

    const/16 v18, 0x11

    const v20, 0x44444444

    aput v20, v0, v18

    const/16 v21, 0x12

    aput v20, v0, v21

    const/16 v21, 0x13

    aput v20, v0, v21

    const/16 v20, 0x14

    const v21, 0x55555555

    aput v21, v0, v20

    const/16 v20, 0x15

    aput v21, v0, v20

    const/16 v20, 0x16

    aput v21, v0, v20

    const/16 v20, 0x17

    aput v21, v0, v20

    const/16 v20, 0x18

    const v21, 0x66666600

    aput v21, v0, v20

    const/16 v20, 0x19

    const v21, 0x66666666

    aput v21, v0, v20

    const/16 v20, 0x1a

    aput v21, v0, v20

    const/16 v20, 0x1b

    aput v21, v0, v20

    const/16 v20, 0x1c

    const v21, -0x77777779

    aput v21, v0, v20

    const/16 v20, 0x1d

    const v21, -0x77677778

    aput v21, v0, v20

    const/16 v20, 0x1e

    const v21, -0x44444446

    aput v21, v0, v20

    const/16 v20, 0x1f

    const v21, 0xfedddc

    aput v21, v0, v20

    const/16 v0, 0x1a

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/tm2;->this:[I

    const v20, -0x53eeeeff

    aput v20, v0, v1

    const v1, 0x345678b9

    aput v1, v0, v4

    aput v2, v0, v3

    aput v2, v0, v6

    const v1, 0x22222222

    aput v1, v0, v5

    aput v1, v0, v7

    const v1, 0x11555511

    aput v1, v0, v8

    aput v2, v0, v9

    const v1, 0x11555111

    aput v1, v0, v10

    aput v2, v0, v11

    const v1, 0x11777711

    aput v1, v0, v12

    aput v2, v0, v13

    const v1, 0x11771111

    aput v1, v0, v14

    aput v2, v0, v15

    const v1, 0x11999911

    aput v1, v0, v16

    aput v2, v0, v17

    const v1, 0x11911111

    aput v1, v0, v19

    aput v2, v0, v18

    const/16 v1, 0x12

    const v3, 0x11cccc11

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    const v3, 0x11c11111

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    const v3, 0x111ccc11

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v2, v0, v1

    const/16 v1, 0x18

    const v3, 0x11000011

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v2, v0, v1

    const-string v0, "UTF-8"

    sput-object v0, Landroid/support/v4/tm2;->catch:Ljava/lang/String;

    sput v19, Landroid/support/v4/tm2;->break:I

    return-void
.end method


# virtual methods
.method public case()[I
    .locals 1

    sget-object v0, Landroid/support/v4/tm2;->this:[I

    return-object v0
.end method

.method public do()[I
    .locals 1

    sget-object v0, Landroid/support/v4/tm2;->goto:[I

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/tm2;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public try()I
    .locals 1

    sget v0, Landroid/support/v4/tm2;->break:I

    return v0
.end method
