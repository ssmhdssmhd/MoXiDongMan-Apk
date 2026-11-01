.class public Landroid/support/v4/di1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final else:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final new:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    const-class v0, Lcom/google/zxing/new;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Landroid/support/v4/di1;->do:Ljava/util/Map;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v3, Lcom/google/zxing/do;->AZTEC:Lcom/google/zxing/do;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v4, Lcom/google/zxing/do;->CODABAR:Lcom/google/zxing/do;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v5, Lcom/google/zxing/do;->CODE_39:Lcom/google/zxing/do;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v6, Lcom/google/zxing/do;->CODE_93:Lcom/google/zxing/do;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v7, Lcom/google/zxing/do;->CODE_128:Lcom/google/zxing/do;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v8, Lcom/google/zxing/do;->DATA_MATRIX:Lcom/google/zxing/do;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v9, Lcom/google/zxing/do;->EAN_8:Lcom/google/zxing/do;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v10, Lcom/google/zxing/do;->EAN_13:Lcom/google/zxing/do;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v11, Lcom/google/zxing/do;->ITF:Lcom/google/zxing/do;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v12, Lcom/google/zxing/do;->MAXICODE:Lcom/google/zxing/do;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v13, Lcom/google/zxing/do;->PDF_417:Lcom/google/zxing/do;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v14, Lcom/google/zxing/do;->QR_CODE:Lcom/google/zxing/do;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v15, Lcom/google/zxing/do;->RSS_14:Lcom/google/zxing/do;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v14

    .line 16
    sget-object v14, Lcom/google/zxing/do;->RSS_EXPANDED:Lcom/google/zxing/do;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v12

    .line 17
    sget-object v12, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v8

    .line 18
    sget-object v8, Lcom/google/zxing/do;->UPC_E:Lcom/google/zxing/do;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v3

    .line 19
    sget-object v3, Lcom/google/zxing/do;->UPC_EAN_EXTENSION:Lcom/google/zxing/do;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v3

    .line 20
    sget-object v3, Lcom/google/zxing/new;->POSSIBLE_FORMATS:Lcom/google/zxing/new;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v2, Lcom/google/zxing/new;->TRY_HARDER:Lcom/google/zxing/new;

    move-object/from16 v21, v3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v2

    .line 22
    sget-object v2, Lcom/google/zxing/new;->CHARACTER_SET:Lcom/google/zxing/new;

    move-object/from16 v23, v3

    const-string v3, "utf-8"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Landroid/support/v4/di1;->if:Ljava/util/Map;

    move-object/from16 v24, v0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v20

    .line 37
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v21

    .line 38
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v5, v23

    .line 39
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/util/EnumMap;

    move-object/from16 v6, v24

    invoke-direct {v1, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Landroid/support/v4/di1;->for:Ljava/util/Map;

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v19

    .line 43
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v18

    .line 44
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    .line 45
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v16

    .line 46
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Landroid/support/v4/di1;->new:Ljava/util/Map;

    .line 51
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Landroid/support/v4/di1;->try:Ljava/util/Map;

    .line 55
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Landroid/support/v4/di1;->case:Ljava/util/Map;

    .line 59
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Landroid/support/v4/di1;->else:Ljava/util/Map;

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v1, v9, v10

    .line 3
    new-array v11, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 4
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 5
    new-instance p0, Landroid/support/v4/qj1;

    invoke-direct {p0, v9, v10, v11}, Landroid/support/v4/qj1;-><init>(II[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance v1, Lcom/google/zxing/case;

    invoke-direct {v1}, Lcom/google/zxing/case;-><init>()V

    new-instance v2, Lcom/google/zxing/for;

    new-instance v3, Landroid/support/v4/tk0;

    invoke-direct {v3, p0}, Landroid/support/v4/tk0;-><init>(Landroid/support/v4/kw0;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/for;-><init>(Lcom/google/zxing/if;)V

    sget-object v3, Landroid/support/v4/di1;->do:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/case;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p0, :cond_0

    .line 9
    :try_start_2
    new-instance v1, Lcom/google/zxing/case;

    invoke-direct {v1}, Lcom/google/zxing/case;-><init>()V

    new-instance v2, Lcom/google/zxing/for;

    new-instance v3, Landroid/support/v4/th0;

    invoke-direct {v3, p0}, Landroid/support/v4/th0;-><init>(Landroid/support/v4/kw0;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/for;-><init>(Lcom/google/zxing/if;)V

    sget-object p0, Landroid/support/v4/di1;->do:Ljava/util/Map;

    invoke-virtual {v1, v2, p0}, Lcom/google/zxing/case;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static if(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/support/v4/p6;->this(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/di1;->do(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
