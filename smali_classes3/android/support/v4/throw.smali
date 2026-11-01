.class public Landroid/support/v4/throw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 2
    new-array v1, v1, [C

    const/16 v2, 0x67

    const/4 v3, 0x0

    .line 3
    aput-char v2, v1, v3

    const/16 v2, 0x65

    const/4 v4, 0x1

    .line 4
    aput-char v2, v1, v4

    const/4 v2, 0x2

    const/16 v5, 0x74

    .line 5
    aput-char v5, v1, v2

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    :cond_0
    const/4 v3, 0x3

    .line 7
    aput-char v2, v1, v3

    :goto_0
    if-lt v4, v0, :cond_1

    .line 8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v4, 0x3

    .line 9
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static do(Landroid/support/v4/xz0;Landroid/support/v4/f92;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/f92;->package()I

    move-result p1

    const-string v0, "valueOf"

    const/16 v1, 0xb8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "java/lang/Double"

    const-string v2, "(D)Ljava/lang/Double;"

    .line 2
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "java/lang/Long"

    const-string v2, "(J)Ljava/lang/Long;"

    .line 3
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "java/lang/Float"

    const-string v2, "(F)Ljava/lang/Float;"

    .line 4
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "java/lang/Integer"

    const-string v2, "(I)Ljava/lang/Integer;"

    .line 5
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "java/lang/Short"

    const-string v2, "(S)Ljava/lang/Short;"

    .line 6
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "java/lang/Byte"

    const-string v2, "(B)Ljava/lang/Byte;"

    .line 7
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "java/lang/Character"

    const-string v2, "(C)Ljava/lang/Character;"

    .line 8
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "java/lang/Boolean"

    const-string v2, "(Z)Ljava/lang/Boolean;"

    .line 9
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static else(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [C

    const/16 v2, 0x69

    const/4 v3, 0x0

    .line 3
    aput-char v2, v1, v3

    const/16 v2, 0x73

    const/4 v4, 0x1

    .line 4
    aput-char v2, v1, v4

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    :cond_0
    const/4 v3, 0x2

    .line 6
    aput-char v2, v1, v3

    :goto_0
    if-lt v4, v0, :cond_1

    .line 7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v4, 0x2

    .line 8
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static for(Landroid/support/v4/xz0;Landroid/support/v4/f92;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/f92;->package()I

    move-result v0

    const/16 v1, 0xb6

    const/16 v2, 0xc0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/f92;->throw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Landroid/support/v4/f92;->throw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "java/lang/Double"

    .line 4
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "doubleValue"

    const-string v2, "()D"

    .line 5
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "java/lang/Long"

    .line 6
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "longValue"

    const-string v2, "()J"

    .line 7
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "java/lang/Float"

    .line 8
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "floatValue"

    const-string v2, "()F"

    .line 9
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "java/lang/Integer"

    .line 10
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "intValue"

    const-string v2, "()I"

    .line 11
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "java/lang/Short"

    .line 12
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "shortValue"

    const-string v2, "()S"

    .line 13
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "java/lang/Byte"

    .line 14
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "byteValue"

    const-string v2, "()B"

    .line 15
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "java/lang/Character"

    .line 16
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "charValue"

    const-string v2, "()C"

    .line 17
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string p1, "java/lang/Boolean"

    .line 18
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "booleanValue"

    const-string v2, "()Z"

    .line 19
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static goto(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 2
    new-array v1, v1, [C

    const/16 v2, 0x73

    const/4 v3, 0x0

    .line 3
    aput-char v2, v1, v3

    const/16 v2, 0x65

    const/4 v4, 0x1

    .line 4
    aput-char v2, v1, v4

    const/4 v2, 0x2

    const/16 v5, 0x74

    .line 5
    aput-char v5, v1, v2

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    :cond_0
    const/4 v3, 0x3

    .line 7
    aput-char v2, v1, v3

    :goto_0
    if-lt v4, v0, :cond_1

    .line 8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v4, 0x3

    .line 9
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static if(Landroid/support/v4/xz0;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/xz0;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/f92;->private(Ljava/lang/Class;)Landroid/support/v4/f92;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/throw;->do(Landroid/support/v4/xz0;Landroid/support/v4/f92;)V

    return-void
.end method

.method public static new(Landroid/support/v4/xz0;Landroid/support/v4/f92;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/f92;->package()I

    move-result v0

    const/16 v1, 0xb6

    const/16 v2, 0xc0

    const-string v3, "java/lang/Number"

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/f92;->throw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Landroid/support/v4/f92;->throw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string p1, "doubleValue"

    const-string v0, "()D"

    .line 5
    invoke-virtual {p0, v1, v3, p1, v0}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string p1, "longValue"

    const-string v0, "()J"

    .line 7
    invoke-virtual {p0, v1, v3, p1, v0}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string p1, "floatValue"

    const-string v0, "()F"

    .line 9
    invoke-virtual {p0, v1, v3, p1, v0}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string p1, "intValue"

    const-string v0, "()I"

    .line 11
    invoke-virtual {p0, v1, v3, p1, v0}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string p1, "shortValue"

    const-string v0, "()S"

    .line 13
    invoke-virtual {p0, v1, v3, p1, v0}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_6
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string p1, "byteValue"

    const-string v0, "()B"

    .line 15
    invoke-virtual {p0, v1, v3, p1, v0}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "java/lang/Character"

    .line 16
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "charValue"

    const-string v2, "()C"

    .line 17
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string p1, "java/lang/Boolean"

    .line 18
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const-string v0, "booleanValue"

    const-string v2, "()Z"

    .line 19
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static this(I)[Lorg/objectweb/asm/break;
    .locals 3

    .line 1
    new-array v0, p0, [Lorg/objectweb/asm/break;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Lorg/objectweb/asm/break;

    invoke-direct {v2}, Lorg/objectweb/asm/break;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static try(Ljava/lang/Class;Lnet/minidev/asm/FieldFilter;)[Landroid/support/v4/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/asm/FieldFilter;",
            ")[",
            "Lnet/minidev/asm/Accessor;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Landroid/support/v4/s7;->do:Landroid/support/v4/s7;

    .line 3
    :cond_0
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Landroid/support/v4/o;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/support/v4/o;

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_2
    aget-object v4, v1, v3

    .line 9
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    new-instance v6, Landroid/support/v4/o;

    invoke-direct {v6, p0, v4, p1}, Landroid/support/v4/o;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lnet/minidev/asm/FieldFilter;)V

    .line 12
    invoke-virtual {v6}, Landroid/support/v4/o;->goto()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
