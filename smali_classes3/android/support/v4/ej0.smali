.class public final enum Landroid/support/v4/ej0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/ej0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES_EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

.field public static final enum ARCEXTDATREC:Landroid/support/v4/ej0;

.field public static final enum CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

.field public static final enum DIGITAL_SIGNATURE:Landroid/support/v4/ej0;

.field public static final enum END_OF_CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

.field public static final enum EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

.field public static final enum LOCAL_FILE_HEADER:Landroid/support/v4/ej0;

.field public static final enum SPLIT_ZIP:Landroid/support/v4/ej0;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Landroid/support/v4/ej0;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_RECORD:Landroid/support/v4/ej0;

.field public static final enum ZIP64_EXTRA_FIELD_SIGNATURE:Landroid/support/v4/ej0;

.field private static final synthetic do:[Landroid/support/v4/ej0;


# instance fields
.field private value:J


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Landroid/support/v4/ej0;

    const-string v1, "LOCAL_FILE_HEADER"

    const/4 v2, 0x0

    const-wide/32 v3, 0x4034b50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/support/v4/ej0;->LOCAL_FILE_HEADER:Landroid/support/v4/ej0;

    .line 2
    new-instance v1, Landroid/support/v4/ej0;

    const-string v3, "EXTRA_DATA_RECORD"

    const/4 v4, 0x1

    const-wide/32 v5, 0x8074b50

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Landroid/support/v4/ej0;->EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

    .line 3
    new-instance v3, Landroid/support/v4/ej0;

    const-string v7, "CENTRAL_DIRECTORY"

    const/4 v8, 0x2

    const-wide/32 v9, 0x2014b50    # 1.6619997E-316

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Landroid/support/v4/ej0;->CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    .line 4
    new-instance v7, Landroid/support/v4/ej0;

    const-string v9, "END_OF_CENTRAL_DIRECTORY"

    const/4 v10, 0x3

    const-wide/32 v11, 0x6054b50

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Landroid/support/v4/ej0;->END_OF_CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    .line 5
    new-instance v9, Landroid/support/v4/ej0;

    const-string v11, "DIGITAL_SIGNATURE"

    const/4 v12, 0x4

    const-wide/32 v13, 0x5054b50

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Landroid/support/v4/ej0;->DIGITAL_SIGNATURE:Landroid/support/v4/ej0;

    .line 6
    new-instance v11, Landroid/support/v4/ej0;

    const-string v13, "ARCEXTDATREC"

    const/4 v14, 0x5

    move-object/from16 v16, v9

    const-wide/32 v8, 0x8064b50

    invoke-direct {v11, v13, v14, v8, v9}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Landroid/support/v4/ej0;->ARCEXTDATREC:Landroid/support/v4/ej0;

    .line 7
    new-instance v8, Landroid/support/v4/ej0;

    const-string v9, "SPLIT_ZIP"

    const/4 v13, 0x6

    invoke-direct {v8, v9, v13, v5, v6}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Landroid/support/v4/ej0;->SPLIT_ZIP:Landroid/support/v4/ej0;

    .line 8
    new-instance v5, Landroid/support/v4/ej0;

    const-string v6, "ZIP64_END_CENTRAL_DIRECTORY_LOCATOR"

    const/4 v9, 0x7

    const-wide/32 v13, 0x7064b50

    invoke-direct {v5, v6, v9, v13, v14}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Landroid/support/v4/ej0;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Landroid/support/v4/ej0;

    .line 9
    new-instance v6, Landroid/support/v4/ej0;

    const-string v13, "ZIP64_END_CENTRAL_DIRECTORY_RECORD"

    const/16 v14, 0x8

    const-wide/32 v9, 0x6064b50

    invoke-direct {v6, v13, v14, v9, v10}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Landroid/support/v4/ej0;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Landroid/support/v4/ej0;

    .line 10
    new-instance v9, Landroid/support/v4/ej0;

    const-string v10, "ZIP64_EXTRA_FIELD_SIGNATURE"

    const/16 v13, 0x9

    const-wide/16 v14, 0x1

    invoke-direct {v9, v10, v13, v14, v15}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Landroid/support/v4/ej0;->ZIP64_EXTRA_FIELD_SIGNATURE:Landroid/support/v4/ej0;

    .line 11
    new-instance v10, Landroid/support/v4/ej0;

    const-string v14, "AES_EXTRA_DATA_RECORD"

    const/16 v15, 0xa

    const-wide/32 v12, 0x9901

    invoke-direct {v10, v14, v15, v12, v13}, Landroid/support/v4/ej0;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Landroid/support/v4/ej0;->AES_EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

    const/16 v12, 0xb

    new-array v12, v12, [Landroid/support/v4/ej0;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    const/4 v0, 0x2

    aput-object v3, v12, v0

    const/4 v0, 0x3

    aput-object v7, v12, v0

    const/4 v0, 0x4

    aput-object v16, v12, v0

    const/4 v0, 0x5

    aput-object v11, v12, v0

    const/4 v0, 0x6

    aput-object v8, v12, v0

    const/4 v0, 0x7

    aput-object v5, v12, v0

    const/16 v0, 0x8

    aput-object v6, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    aput-object v10, v12, v15

    .line 12
    sput-object v12, Landroid/support/v4/ej0;->do:[Landroid/support/v4/ej0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-wide p3, p0, Landroid/support/v4/ej0;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/ej0;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/ej0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/ej0;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/ej0;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ej0;->do:[Landroid/support/v4/ej0;

    invoke-virtual {v0}, [Landroid/support/v4/ej0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/ej0;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ej0;->value:J

    return-wide v0
.end method
