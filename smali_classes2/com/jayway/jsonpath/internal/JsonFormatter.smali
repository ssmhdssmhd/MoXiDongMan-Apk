.class public Lcom/jayway/jsonpath/internal/JsonFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INDENT:Ljava/lang/String; = "   "

.field private static final MODE_BETWEEN:I = 0x68

.field private static final MODE_DOUBLE:I = 0x65

.field private static final MODE_ESCAPE_DOUBLE:I = 0x67

.field private static final MODE_ESCAPE_SINGLE:I = 0x66

.field private static final MODE_SINGLE:I = 0x64

.field private static final NEW_LINE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/JsonFormatter;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendIndent(Ljava/lang/StringBuilder;I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    const-string v0, "   "

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "[\\r\\n]"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/16 v4, 0x68

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    const/16 v7, 0x64

    const/16 v8, 0x22

    const/16 v9, 0x5c

    const/16 v10, 0x27

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 v9, 0x20

    if-eq v5, v9, :cond_9

    if-eq v5, v8, :cond_5

    if-eq v5, v10, :cond_4

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_2

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_0

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_1

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_0

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6
    :cond_0
    sget-object v6, Lcom/jayway/jsonpath/internal/JsonFormatter;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    .line 7
    invoke-static {v0, v3}, Lcom/jayway/jsonpath/internal/JsonFormatter;->appendIndent(Ljava/lang/StringBuilder;I)V

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    sget-object v5, Lcom/jayway/jsonpath/internal/JsonFormatter;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 11
    invoke-static {v0, v3}, Lcom/jayway/jsonpath/internal/JsonFormatter;->appendIndent(Ljava/lang/StringBuilder;I)V

    goto :goto_3

    :cond_2
    const-string v5, " : "

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    sget-object v5, Lcom/jayway/jsonpath/internal/JsonFormatter;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v0, v3}, Lcom/jayway/jsonpath/internal/JsonFormatter;->appendIndent(Ljava/lang/StringBuilder;I)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v4, 0x65

    goto :goto_3

    .line 19
    :pswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v4, 0x64

    goto :goto_3

    .line 20
    :pswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v5, v8, :cond_7

    if-eq v5, v9, :cond_6

    goto :goto_3

    :cond_6
    const/16 v4, 0x67

    goto :goto_3

    :cond_7
    const/16 v4, 0x68

    goto :goto_3

    .line 21
    :pswitch_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v5, v10, :cond_7

    if-eq v5, v9, :cond_8

    goto :goto_3

    :cond_8
    const/16 v4, 0x66

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 22
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
