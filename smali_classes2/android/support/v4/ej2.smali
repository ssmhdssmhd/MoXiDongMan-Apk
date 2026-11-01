.class public Landroid/support/v4/ej2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation


# static fields
.field private static final do:C = '\u0000'

.field private static final for:Lcom/google/common/escape/for;

.field private static final if:C = '\u001f'

.field private static final new:Lcom/google/common/escape/for;

.field private static final try:Lcom/google/common/escape/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/escape/new;->if()Lcom/google/common/escape/new$for;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0xfffd

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->new(CC)Lcom/google/common/escape/new$for;

    const-string v2, "\ufffd"

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/common/escape/new$for;->try(Ljava/lang/String;)Lcom/google/common/escape/new$for;

    :goto_0
    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    if-gt v1, v3, :cond_1

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x26

    const-string v2, "&amp;"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    .line 8
    invoke-virtual {v0}, Lcom/google/common/escape/new$for;->for()Lcom/google/common/escape/for;

    move-result-object v1

    sput-object v1, Landroid/support/v4/ej2;->new:Lcom/google/common/escape/for;

    const/16 v1, 0x27

    const-string v2, "&apos;"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    const/16 v1, 0x22

    const-string v2, "&quot;"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    .line 11
    invoke-virtual {v0}, Lcom/google/common/escape/new$for;->for()Lcom/google/common/escape/for;

    move-result-object v1

    sput-object v1, Landroid/support/v4/ej2;->for:Lcom/google/common/escape/for;

    const-string v1, "&#x9;"

    .line 12
    invoke-virtual {v0, v6, v1}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    const-string v1, "&#xA;"

    .line 13
    invoke-virtual {v0, v5, v1}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    const-string v1, "&#xD;"

    .line 14
    invoke-virtual {v0, v4, v1}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    .line 15
    invoke-virtual {v0}, Lcom/google/common/escape/new$for;->for()Lcom/google/common/escape/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ej2;->try:Lcom/google/common/escape/for;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/common/escape/for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ej2;->try:Lcom/google/common/escape/for;

    return-object v0
.end method

.method public static if()Lcom/google/common/escape/for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ej2;->new:Lcom/google/common/escape/for;

    return-object v0
.end method
