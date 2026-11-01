.class public final Landroid/support/v4/kk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation


# static fields
.field private static final do:Lcom/google/common/escape/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/escape/new;->if()Lcom/google/common/escape/new$for;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "&quot;"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    move-result-object v0

    const/16 v1, 0x27

    const-string v2, "&#39;"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/new$for;->if(CLjava/lang/String;)Lcom/google/common/escape/new$for;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/escape/new$for;->for()Lcom/google/common/escape/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/kk0;->do:Lcom/google/common/escape/for;

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
    sget-object v0, Landroid/support/v4/kk0;->do:Lcom/google/common/escape/for;

    return-object v0
.end method
