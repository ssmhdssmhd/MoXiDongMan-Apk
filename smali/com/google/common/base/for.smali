.class public abstract enum Lcom/google/common/base/for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/for$case;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOWER_CAMEL:Lcom/google/common/base/for;

.field public static final enum LOWER_HYPHEN:Lcom/google/common/base/for;

.field public static final enum LOWER_UNDERSCORE:Lcom/google/common/base/for;

.field public static final enum UPPER_CAMEL:Lcom/google/common/base/for;

.field public static final enum UPPER_UNDERSCORE:Lcom/google/common/base/for;

.field private static final synthetic do:[Lcom/google/common/base/for;


# instance fields
.field private final wordBoundary:Lcom/google/common/base/new;

.field private final wordSeparator:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/common/base/for$do;

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/google/common/base/new;->while(C)Lcom/google/common/base/new;

    move-result-object v1

    const-string v2, "LOWER_HYPHEN"

    const/4 v3, 0x0

    const-string v4, "-"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/common/base/for$do;-><init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/for;->LOWER_HYPHEN:Lcom/google/common/base/for;

    .line 2
    new-instance v1, Lcom/google/common/base/for$if;

    const/16 v2, 0x5f

    invoke-static {v2}, Lcom/google/common/base/new;->while(C)Lcom/google/common/base/new;

    move-result-object v4

    const-string v5, "LOWER_UNDERSCORE"

    const/4 v6, 0x1

    const-string v7, "_"

    invoke-direct {v1, v5, v6, v4, v7}, Lcom/google/common/base/for$if;-><init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V

    sput-object v1, Lcom/google/common/base/for;->LOWER_UNDERSCORE:Lcom/google/common/base/for;

    .line 3
    new-instance v4, Lcom/google/common/base/for$for;

    const/16 v5, 0x41

    const/16 v8, 0x5a

    invoke-static {v5, v8}, Lcom/google/common/base/new;->const(CC)Lcom/google/common/base/new;

    move-result-object v9

    const-string v10, "LOWER_CAMEL"

    const/4 v11, 0x2

    const-string v12, ""

    invoke-direct {v4, v10, v11, v9, v12}, Lcom/google/common/base/for$for;-><init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V

    sput-object v4, Lcom/google/common/base/for;->LOWER_CAMEL:Lcom/google/common/base/for;

    .line 4
    new-instance v9, Lcom/google/common/base/for$new;

    invoke-static {v5, v8}, Lcom/google/common/base/new;->const(CC)Lcom/google/common/base/new;

    move-result-object v5

    const-string v8, "UPPER_CAMEL"

    const/4 v10, 0x3

    invoke-direct {v9, v8, v10, v5, v12}, Lcom/google/common/base/for$new;-><init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V

    sput-object v9, Lcom/google/common/base/for;->UPPER_CAMEL:Lcom/google/common/base/for;

    .line 5
    new-instance v5, Lcom/google/common/base/for$try;

    invoke-static {v2}, Lcom/google/common/base/new;->while(C)Lcom/google/common/base/new;

    move-result-object v2

    const-string v8, "UPPER_UNDERSCORE"

    const/4 v12, 0x4

    invoke-direct {v5, v8, v12, v2, v7}, Lcom/google/common/base/for$try;-><init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V

    sput-object v5, Lcom/google/common/base/for;->UPPER_UNDERSCORE:Lcom/google/common/base/for;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/common/base/for;

    aput-object v0, v2, v3

    aput-object v1, v2, v6

    aput-object v4, v2, v11

    aput-object v9, v2, v10

    aput-object v5, v2, v12

    .line 6
    sput-object v2, Lcom/google/common/base/for;->do:[Lcom/google/common/base/for;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/new;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/common/base/for;->wordBoundary:Lcom/google/common/base/new;

    .line 4
    iput-object p4, p0, Lcom/google/common/base/for;->wordSeparator:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;Lcom/google/common/base/for$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/base/for;-><init>(Ljava/lang/String;ILcom/google/common/base/new;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/for;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static do(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/support/v4/t3;->goto(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/t3;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/base/for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/for;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/for;->do:[Lcom/google/common/base/for;

    invoke-virtual {v0}, [Lcom/google/common/base/for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/for;

    return-object v0
.end method


# virtual methods
.method public convert(Lcom/google/common/base/for;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1
    :goto_0
    iget-object v4, p0, Lcom/google/common/base/for;->wordBoundary:Lcom/google/common/base/new;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, p2, v3}, Lcom/google/common/base/new;->super(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v0, :cond_1

    if-nez v2, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p1, Lcom/google/common/base/for;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/base/for;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/base/for;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_1
    iget-object v2, p1, Lcom/google/common/base/for;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/google/common/base/for;->wordSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/common/base/for;->normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/base/for;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public converterTo(Lcom/google/common/base/for;)Lcom/google/common/base/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/for;",
            ")",
            "Lcom/google/common/base/else<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/for$case;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/for$case;-><init>(Lcom/google/common/base/for;Lcom/google/common/base/for;)V

    return-object v0
.end method

.method public normalizeFirstWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/base/for;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract normalizeWord(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final to(Lcom/google/common/base/for;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/for;->convert(Lcom/google/common/base/for;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method
