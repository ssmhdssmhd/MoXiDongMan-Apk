.class public Lnet/minidev/asm/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static break:Ljava/lang/String;


# instance fields
.field public final case:Ljava/lang/String;

.field public final do:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final else:Ljava/lang/String;

.field public final for:Lnet/minidev/asm/for;

.field public final goto:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public final if:[Landroid/support/v4/o;

.field public final new:Ljava/lang/String;

.field public this:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnet/minidev/asm/do;

    invoke-static {v0}, Landroid/support/v4/f92;->while(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/minidev/asm/if;->break:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Landroid/support/v4/o;Lnet/minidev/asm/for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lnet/minidev/asm/Accessor;",
            "Lnet/minidev/asm/for;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/minidev/asm/if;->goto:Ljava/util/HashMap;

    .line 3
    const-class v0, Ljava/lang/NoSuchFieldException;

    iput-object v0, p0, Lnet/minidev/asm/if;->this:Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lnet/minidev/asm/if;->do:Ljava/lang/Class;

    .line 5
    iput-object p2, p0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    .line 6
    iput-object p3, p0, Lnet/minidev/asm/if;->for:Lnet/minidev/asm/for;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/asm/if;->new:Ljava/lang/String;

    const-string p2, "java."

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "AccAccess"

    if-eqz p2, :cond_0

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "net.minidev.asm."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/minidev/asm/if;->try:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/minidev/asm/if;->try:Ljava/lang/String;

    .line 11
    :goto_0
    iget-object p2, p0, Lnet/minidev/asm/if;->try:Ljava/lang/String;

    const/16 p3, 0x2e

    const/16 v0, 0x2f

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/minidev/asm/if;->case:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    return-void
.end method

.method private case(Landroid/support/v4/xz0;Landroid/support/v4/o;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/16 v9, 0x19

    const/4 v10, 0x1

    .line 1
    invoke-virtual {v7, v9, v10}, Landroid/support/v4/xz0;->continue(II)V

    .line 2
    iget-object v1, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    const/16 v11, 0xc0

    invoke-virtual {v7, v11, v1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const/4 v12, 0x3

    .line 3
    invoke-virtual {v7, v9, v12}, Landroid/support/v4/xz0;->continue(II)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/o;->new()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/f92;->private(Ljava/lang/Class;)Landroid/support/v4/f92;

    move-result-object v13

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/o;->new()Ljava/lang/Class;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/support/v4/f92;->while(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    .line 7
    iget-object v2, v0, Lnet/minidev/asm/if;->goto:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    const/16 v3, 0xb8

    const/16 v15, 0xb6

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/f92;->while(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v2}, Landroid/support/v4/f92;->native(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v7, v3, v1, v4, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/o;->try()Z

    move-result v2

    const/16 v4, 0x3a

    const-string v5, "()Ljava/lang/String;"

    const-string v6, "toString"

    const-string v11, "java/lang/Object"

    const/16 v10, 0xc6

    if-eqz v2, :cond_1

    .line 13
    new-instance v1, Lorg/objectweb/asm/break;

    invoke-direct {v1}, Lorg/objectweb/asm/break;-><init>()V

    .line 14
    invoke-virtual {v7, v10, v1}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    .line 15
    invoke-virtual {v7, v9, v12}, Landroid/support/v4/xz0;->continue(II)V

    .line 16
    invoke-virtual {v7, v15, v11, v6, v5}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "(Ljava/lang/String;)L"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "valueOf"

    invoke-virtual {v7, v3, v14, v5, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v7, v4, v12}, Landroid/support/v4/xz0;->continue(II)V

    .line 19
    invoke-virtual {v7, v1}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 20
    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v7, v9, v1}, Landroid/support/v4/xz0;->continue(II)V

    .line 22
    iget-object v1, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-virtual {v7, v2, v1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    .line 23
    invoke-virtual {v7, v9, v12}, Landroid/support/v4/xz0;->continue(II)V

    .line 24
    invoke-virtual {v7, v2, v14}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    new-instance v1, Lorg/objectweb/asm/break;

    invoke-direct {v1}, Lorg/objectweb/asm/break;-><init>()V

    .line 27
    invoke-virtual {v7, v10, v1}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    .line 28
    invoke-virtual {v7, v9, v12}, Landroid/support/v4/xz0;->continue(II)V

    .line 29
    invoke-virtual {v7, v15, v11, v6, v5}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v7, v4, v12}, Landroid/support/v4/xz0;->continue(II)V

    .line 31
    invoke-virtual {v7, v1}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v7, v9, v1}, Landroid/support/v4/xz0;->continue(II)V

    .line 34
    iget-object v1, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-virtual {v7, v2, v1}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    .line 35
    invoke-virtual {v7, v9, v12}, Landroid/support/v4/xz0;->continue(II)V

    .line 36
    invoke-virtual {v7, v2, v14}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0xc0

    .line 37
    invoke-virtual {v7, v2, v14}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    .line 38
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/o;->case()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xb5

    .line 39
    iget-object v2, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/o;->for()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/support/v4/xz0;->case(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_3
    iget-object v1, v8, Landroid/support/v4/o;->if:Ljava/lang/reflect/Method;

    invoke-static {v1}, Landroid/support/v4/f92;->native(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    iget-object v3, v8, Landroid/support/v4/o;->if:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v15, v2, v3, v1}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v1, 0xb1

    .line 42
    invoke-virtual {v7, v1}, Landroid/support/v4/xz0;->this(I)V

    return-void
.end method

.method private else(Landroid/support/v4/xz0;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/xz0;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/support/v4/f92;->while(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xbb

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/xz0;->this(I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mapping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/minidev/asm/if;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed to map field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/xz0;->super(Ljava/lang/Object;)V

    const/16 v0, 0x15

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/xz0;->continue(II)V

    const/16 v0, 0xb8

    const-string v1, "java/lang/Integer"

    const-string v2, "toString"

    const-string v3, "(I)Ljava/lang/String;"

    .line 6
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb6

    const-string v1, "java/lang/String"

    const-string v2, "concat"

    const-string v3, "(Ljava/lang/String;)Ljava/lang/String;"

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb7

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    .line 8
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xbf

    .line 9
    invoke-virtual {p1, p2}, Landroid/support/v4/xz0;->this(I)V

    return-void
.end method

.method private goto(Landroid/support/v4/xz0;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/xz0;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/support/v4/f92;->while(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xbb

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/xz0;->this(I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mapping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/minidev/asm/if;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed to map field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/xz0;->super(Ljava/lang/Object;)V

    const/16 v0, 0x19

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/xz0;->continue(II)V

    const/16 v0, 0xb6

    const-string v1, "java/lang/String"

    const-string v2, "concat"

    const-string v3, "(Ljava/lang/String;)Ljava/lang/String;"

    .line 6
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb7

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    .line 7
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xbf

    .line 8
    invoke-virtual {p1, p2}, Landroid/support/v4/xz0;->this(I)V

    return-void
.end method

.method private new([BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private try(Landroid/support/v4/xz0;IILorg/objectweb/asm/break;)V
    .locals 4

    const/16 v0, 0x15

    .line 1
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/xz0;->continue(II)V

    if-nez p3, :cond_0

    const/16 p2, 0x9a

    .line 2
    invoke-virtual {p1, p2, p4}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const/4 v0, 0x4

    const/16 v1, 0xa0

    if-ne p3, p2, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/xz0;->this(I)V

    .line 4
    invoke-virtual {p1, v1, p4}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    const/4 v2, 0x5

    if-ne p3, p2, :cond_2

    .line 5
    invoke-virtual {p1, v2}, Landroid/support/v4/xz0;->this(I)V

    .line 6
    invoke-virtual {p1, v1, p4}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    const/4 v3, 0x6

    if-ne p3, p2, :cond_3

    .line 7
    invoke-virtual {p1, v3}, Landroid/support/v4/xz0;->this(I)V

    .line 8
    invoke-virtual {p1, v1, p4}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    goto :goto_0

    :cond_3
    if-ne p3, v0, :cond_4

    const/4 p2, 0x7

    .line 9
    invoke-virtual {p1, p2}, Landroid/support/v4/xz0;->this(I)V

    .line 10
    invoke-virtual {p1, v1, p4}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    goto :goto_0

    :cond_4
    if-ne p3, v2, :cond_5

    const/16 p2, 0x8

    .line 11
    invoke-virtual {p1, p2}, Landroid/support/v4/xz0;->this(I)V

    .line 12
    invoke-virtual {p1, v1, p4}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    goto :goto_0

    :cond_5
    if-lt p3, v3, :cond_6

    const/16 p2, 0x10

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/xz0;->catch(II)V

    .line 14
    invoke-virtual {p1, v1, p4}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    :goto_0
    return-void

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "non supported negative values"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 4
    array-length v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    aget-object v4, v4, v1

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 7
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    iget-object v5, p0, Lnet/minidev/asm/if;->goto:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public for()Ljava/lang/Class;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v8, Lorg/objectweb/asm/for;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lorg/objectweb/asm/for;-><init>(I)V

    .line 2
    iget-object v1, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v1, v1

    const/4 v10, 0x0

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0xe

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lnet/minidev/asm/BeansAccess<L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";>;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x32

    const/16 v3, 0x21

    .line 4
    iget-object v4, v0, Lnet/minidev/asm/if;->case:Ljava/lang/String;

    sget-object v6, Lnet/minidev/asm/if;->break:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lorg/objectweb/asm/for;->do(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "<init>"

    const-string v4, "()V"

    .line 5
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/for;->else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/support/v4/xz0;->new()V

    const/16 v7, 0x19

    .line 7
    invoke-virtual {v1, v7, v10}, Landroid/support/v4/xz0;->continue(II)V

    .line 8
    sget-object v2, Lnet/minidev/asm/if;->break:Ljava/lang/String;

    const/16 v13, 0xb7

    const-string v14, "<init>"

    const-string v15, "()V"

    invoke-virtual {v1, v13, v2, v14, v15}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xb1

    .line 9
    invoke-virtual {v1, v6}, Landroid/support/v4/xz0;->this(I)V

    .line 10
    invoke-virtual {v1, v9, v9}, Landroid/support/v4/xz0;->public(II)V

    .line 11
    invoke-virtual {v1}, Landroid/support/v4/xz0;->try()V

    const/4 v2, 0x1

    const/16 v16, 0x0

    const-string v3, "set"

    const-string v4, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    move-object v1, v8

    const/16 v13, 0xb1

    move-object/from16 v6, v16

    .line 12
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/for;->else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/support/v4/xz0;->new()V

    .line 14
    iget-object v2, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v3, v2

    const/16 v6, 0x15

    const/4 v5, 0x2

    if-eqz v3, :cond_5

    .line 15
    array-length v3, v2

    if-le v3, v12, :cond_3

    .line 16
    invoke-virtual {v1, v6, v5}, Landroid/support/v4/xz0;->continue(II)V

    .line 17
    iget-object v2, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v2, v2

    invoke-static {v2}, Landroid/support/v4/throw;->this(I)[Lorg/objectweb/asm/break;

    move-result-object v3

    .line 18
    new-instance v4, Lorg/objectweb/asm/break;

    invoke-direct {v4}, Lorg/objectweb/asm/break;-><init>()V

    .line 19
    array-length v2, v3

    sub-int/2addr v2, v9

    invoke-virtual {v1, v10, v2, v4, v3}, Landroid/support/v4/xz0;->extends(IILorg/objectweb/asm/break;[Lorg/objectweb/asm/break;)V

    .line 20
    iget-object v2, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v6, v2

    const/4 v7, 0x0

    const/16 v17, 0x0

    :goto_1
    if-lt v7, v6, :cond_1

    .line 21
    invoke-virtual {v1, v4}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    goto :goto_4

    .line 22
    :cond_1
    aget-object v12, v2, v7

    add-int/lit8 v18, v17, 0x1

    .line 23
    aget-object v10, v3, v17

    invoke-virtual {v1, v10}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    .line 24
    invoke-virtual {v12}, Landroid/support/v4/o;->this()Z

    move-result v10

    if-nez v10, :cond_2

    .line 25
    invoke-virtual {v1, v13}, Landroid/support/v4/xz0;->this(I)V

    goto :goto_2

    .line 26
    :cond_2
    invoke-direct {v0, v1, v12}, Lnet/minidev/asm/if;->case(Landroid/support/v4/xz0;Landroid/support/v4/o;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v18

    const/4 v10, 0x0

    const/16 v12, 0xe

    goto :goto_1

    .line 27
    :cond_3
    array-length v2, v2

    invoke-static {v2}, Landroid/support/v4/throw;->this(I)[Lorg/objectweb/asm/break;

    move-result-object v2

    .line 28
    iget-object v3, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-lt v6, v4, :cond_4

    goto :goto_4

    :cond_4
    aget-object v10, v3, v6

    .line 29
    aget-object v12, v2, v7

    invoke-direct {v0, v1, v5, v7, v12}, Lnet/minidev/asm/if;->try(Landroid/support/v4/xz0;IILorg/objectweb/asm/break;)V

    .line 30
    invoke-direct {v0, v1, v10}, Lnet/minidev/asm/if;->case(Landroid/support/v4/xz0;Landroid/support/v4/o;)V

    .line 31
    aget-object v10, v2, v7

    invoke-virtual {v1, v10}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    .line 32
    invoke-virtual/range {v17 .. v22}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 33
    :cond_5
    :goto_4
    iget-object v2, v0, Lnet/minidev/asm/if;->this:Ljava/lang/Class;

    if-eqz v2, :cond_6

    .line 34
    invoke-direct {v0, v1, v2}, Lnet/minidev/asm/if;->else(Landroid/support/v4/xz0;Ljava/lang/Class;)V

    goto :goto_5

    .line 35
    :cond_6
    invoke-virtual {v1, v13}, Landroid/support/v4/xz0;->this(I)V

    :goto_5
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2, v2}, Landroid/support/v4/xz0;->public(II)V

    .line 37
    invoke-virtual {v1}, Landroid/support/v4/xz0;->try()V

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "get"

    const-string v4, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    move-object v1, v8

    const/4 v10, 0x2

    move-object v5, v6

    const/16 v12, 0x15

    move-object v6, v7

    .line 38
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/for;->else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/support/v4/xz0;->new()V

    .line 40
    iget-object v2, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v3, v2

    const/16 v6, 0xc0

    const/16 v4, 0xb0

    if-nez v3, :cond_7

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    .line 41
    invoke-virtual/range {v17 .. v22}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_6
    const/16 v9, 0xb6

    goto/16 :goto_b

    .line 42
    :cond_7
    array-length v3, v2

    const/16 v13, 0xe

    if-le v3, v13, :cond_b

    .line 43
    invoke-virtual {v1, v12, v10}, Landroid/support/v4/xz0;->continue(II)V

    .line 44
    iget-object v2, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v2, v2

    invoke-static {v2}, Landroid/support/v4/throw;->this(I)[Lorg/objectweb/asm/break;

    move-result-object v3

    .line 45
    new-instance v12, Lorg/objectweb/asm/break;

    invoke-direct {v12}, Lorg/objectweb/asm/break;-><init>()V

    .line 46
    array-length v2, v3

    sub-int/2addr v2, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v2, v12, v3}, Landroid/support/v4/xz0;->extends(IILorg/objectweb/asm/break;[Lorg/objectweb/asm/break;)V

    .line 47
    iget-object v13, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v2, v13

    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_7
    if-lt v10, v2, :cond_8

    .line 48
    invoke-virtual {v1, v12}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    .line 49
    invoke-virtual/range {v17 .. v22}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_6

    .line 50
    :cond_8
    aget-object v5, v13, v10

    add-int/lit8 v23, v17, 0x1

    .line 51
    aget-object v7, v3, v17

    invoke-virtual {v1, v7}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    .line 52
    invoke-virtual/range {v17 .. v22}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v5}, Landroid/support/v4/o;->else()Z

    move-result v7

    if-nez v7, :cond_9

    .line 54
    invoke-virtual {v1, v9}, Landroid/support/v4/xz0;->this(I)V

    .line 55
    invoke-virtual {v1, v4}, Landroid/support/v4/xz0;->this(I)V

    const/16 v9, 0xb6

    goto :goto_9

    :cond_9
    const/16 v7, 0x19

    .line 56
    invoke-virtual {v1, v7, v9}, Landroid/support/v4/xz0;->continue(II)V

    .line 57
    iget-object v7, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Landroid/support/v4/o;->new()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/f92;->private(Ljava/lang/Class;)Landroid/support/v4/f92;

    move-result-object v7

    .line 59
    invoke-virtual {v5}, Landroid/support/v4/o;->case()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 60
    iget-object v6, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/support/v4/o;->for()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v9

    const/16 v4, 0xb4

    invoke-virtual {v1, v4, v6, v5, v9}, Landroid/support/v4/xz0;->case(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xb6

    goto :goto_8

    .line 61
    :cond_a
    iget-object v4, v5, Landroid/support/v4/o;->for:Ljava/lang/reflect/Method;

    invoke-static {v4}, Landroid/support/v4/f92;->native(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v6, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    iget-object v5, v5, Landroid/support/v4/o;->for:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0xb6

    invoke-virtual {v1, v9, v6, v5, v4}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_8
    invoke-static {v1, v7}, Landroid/support/v4/throw;->do(Landroid/support/v4/xz0;Landroid/support/v4/f92;)V

    const/16 v4, 0xb0

    .line 64
    invoke-virtual {v1, v4}, Landroid/support/v4/xz0;->this(I)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v23

    const/16 v4, 0xb0

    const/16 v6, 0xc0

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_b
    const/16 v9, 0xb6

    .line 65
    array-length v2, v2

    invoke-static {v2}, Landroid/support/v4/throw;->this(I)[Lorg/objectweb/asm/break;

    move-result-object v2

    .line 66
    iget-object v3, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    if-lt v5, v4, :cond_14

    .line 67
    :goto_b
    iget-object v2, v0, Lnet/minidev/asm/if;->this:Ljava/lang/Class;

    if-eqz v2, :cond_c

    .line 68
    invoke-direct {v0, v1, v2}, Lnet/minidev/asm/if;->else(Landroid/support/v4/xz0;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/16 v4, 0xb0

    goto :goto_c

    :cond_c
    const/4 v2, 0x1

    .line 69
    invoke-virtual {v1, v2}, Landroid/support/v4/xz0;->this(I)V

    const/16 v4, 0xb0

    .line 70
    invoke-virtual {v1, v4}, Landroid/support/v4/xz0;->this(I)V

    const/4 v2, 0x0

    .line 71
    :goto_c
    invoke-virtual {v1, v2, v2}, Landroid/support/v4/xz0;->public(II)V

    .line 72
    invoke-virtual {v1}, Landroid/support/v4/xz0;->try()V

    const-string v10, "(Ljava/lang/Object;)Z"

    const-string v12, "equals"

    const-string v13, "java/lang/String"

    if-nez v11, :cond_f

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "set"

    const-string v18, "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V"

    move-object v1, v8

    const/16 v9, 0xb0

    move-object/from16 v4, v18

    const/16 v9, 0xb6

    .line 73
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/for;->else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/support/v4/xz0;->new()V

    .line 75
    iget-object v2, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v2, v2

    invoke-static {v2}, Landroid/support/v4/throw;->this(I)[Lorg/objectweb/asm/break;

    move-result-object v2

    .line 76
    iget-object v3, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-lt v5, v4, :cond_e

    .line 77
    iget-object v2, v0, Lnet/minidev/asm/if;->this:Ljava/lang/Class;

    if-eqz v2, :cond_d

    .line 78
    invoke-direct {v0, v1, v2}, Lnet/minidev/asm/if;->goto(Landroid/support/v4/xz0;Ljava/lang/Class;)V

    goto :goto_e

    :cond_d
    const/16 v2, 0xb1

    .line 79
    invoke-virtual {v1, v2}, Landroid/support/v4/xz0;->this(I)V

    :goto_e
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2, v2}, Landroid/support/v4/xz0;->public(II)V

    .line 81
    invoke-virtual {v1}, Landroid/support/v4/xz0;->try()V

    goto :goto_f

    :cond_e
    const/16 v16, 0xb1

    .line 82
    aget-object v7, v3, v5

    move-object/from16 v24, v3

    const/4 v3, 0x2

    const/16 v9, 0x19

    .line 83
    invoke-virtual {v1, v9, v3}, Landroid/support/v4/xz0;->continue(II)V

    .line 84
    iget-object v3, v7, Landroid/support/v4/o;->else:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/xz0;->super(Ljava/lang/Object;)V

    const/16 v3, 0xb6

    .line 85
    invoke-virtual {v1, v3, v13, v12, v10}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    aget-object v3, v2, v6

    const/16 v9, 0x99

    invoke-virtual {v1, v9, v3}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    .line 87
    invoke-direct {v0, v1, v7}, Lnet/minidev/asm/if;->case(Landroid/support/v4/xz0;Landroid/support/v4/o;)V

    .line 88
    aget-object v3, v2, v6

    invoke-virtual {v1, v3}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    .line 89
    invoke-virtual/range {v17 .. v22}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/4 v3, 0x1

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v24

    const/16 v9, 0xb6

    goto :goto_d

    :cond_f
    :goto_f
    if-nez v11, :cond_13

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "get"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;"

    move-object v1, v8

    .line 90
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/for;->else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/support/v4/xz0;->new()V

    .line 92
    iget-object v2, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v2, v2

    invoke-static {v2}, Landroid/support/v4/throw;->this(I)[Lorg/objectweb/asm/break;

    move-result-object v2

    .line 93
    iget-object v3, v0, Lnet/minidev/asm/if;->if:[Landroid/support/v4/o;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_10
    if-lt v5, v4, :cond_11

    .line 94
    iget-object v2, v0, Lnet/minidev/asm/if;->this:Ljava/lang/Class;

    if-eqz v2, :cond_10

    .line 95
    invoke-direct {v0, v1, v2}, Lnet/minidev/asm/if;->goto(Landroid/support/v4/xz0;Ljava/lang/Class;)V

    goto :goto_11

    :cond_10
    const/4 v2, 0x1

    .line 96
    invoke-virtual {v1, v2}, Landroid/support/v4/xz0;->this(I)V

    const/16 v2, 0xb0

    .line 97
    invoke-virtual {v1, v2}, Landroid/support/v4/xz0;->this(I)V

    :goto_11
    const/4 v7, 0x0

    .line 98
    invoke-virtual {v1, v7, v7}, Landroid/support/v4/xz0;->public(II)V

    .line 99
    invoke-virtual {v1}, Landroid/support/v4/xz0;->try()V

    goto/16 :goto_13

    :cond_11
    const/4 v7, 0x0

    .line 100
    aget-object v9, v3, v5

    const/4 v7, 0x2

    const/16 v11, 0x19

    .line 101
    invoke-virtual {v1, v11, v7}, Landroid/support/v4/xz0;->continue(II)V

    .line 102
    iget-object v7, v9, Landroid/support/v4/o;->else:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/support/v4/xz0;->super(Ljava/lang/Object;)V

    const/16 v7, 0xb6

    .line 103
    invoke-virtual {v1, v7, v13, v12, v10}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    aget-object v7, v2, v6

    move-object/from16 v16, v3

    const/16 v3, 0x99

    invoke-virtual {v1, v3, v7}, Landroid/support/v4/xz0;->const(ILorg/objectweb/asm/break;)V

    const/4 v7, 0x1

    .line 105
    invoke-virtual {v1, v11, v7}, Landroid/support/v4/xz0;->continue(II)V

    .line 106
    iget-object v7, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    const/16 v11, 0xc0

    invoke-virtual {v1, v11, v7}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    .line 107
    invoke-virtual {v9}, Landroid/support/v4/o;->new()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/f92;->private(Ljava/lang/Class;)Landroid/support/v4/f92;

    move-result-object v7

    .line 108
    invoke-virtual {v9}, Landroid/support/v4/o;->case()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 109
    iget-object v3, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/support/v4/o;->for()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v11

    move/from16 v24, v4

    const/16 v4, 0xb4

    invoke-virtual {v1, v4, v3, v9, v11}, Landroid/support/v4/xz0;->case(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_12
    move/from16 v24, v4

    .line 110
    iget-object v3, v9, Landroid/support/v4/o;->for:Ljava/lang/reflect/Method;

    invoke-static {v3}, Landroid/support/v4/f92;->native(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v4, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    iget-object v9, v9, Landroid/support/v4/o;->for:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0xb6

    invoke-virtual {v1, v11, v4, v9, v3}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_12
    invoke-static {v1, v7}, Landroid/support/v4/throw;->do(Landroid/support/v4/xz0;Landroid/support/v4/f92;)V

    const/16 v3, 0xb0

    .line 113
    invoke-virtual {v1, v3}, Landroid/support/v4/xz0;->this(I)V

    .line 114
    aget-object v3, v2, v6

    invoke-virtual {v1, v3}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    .line 115
    invoke-virtual/range {v17 .. v22}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v24

    goto/16 :goto_10

    :cond_13
    :goto_13
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "newInstance"

    const-string v4, "()Ljava/lang/Object;"

    move-object v1, v8

    .line 116
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/for;->else(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/xz0;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/support/v4/xz0;->new()V

    const/16 v2, 0xbb

    .line 118
    iget-object v3, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    const/16 v2, 0x59

    .line 119
    invoke-virtual {v1, v2}, Landroid/support/v4/xz0;->this(I)V

    .line 120
    iget-object v2, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    const/16 v7, 0xb7

    invoke-virtual {v1, v7, v2, v14, v15}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb0

    .line 121
    invoke-virtual {v1, v2}, Landroid/support/v4/xz0;->this(I)V

    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 122
    invoke-virtual {v1, v9, v10}, Landroid/support/v4/xz0;->public(II)V

    .line 123
    invoke-virtual {v1}, Landroid/support/v4/xz0;->try()V

    .line 124
    invoke-virtual {v8}, Lorg/objectweb/asm/for;->new()V

    .line 125
    invoke-virtual {v8}, Lorg/objectweb/asm/for;->d()[B

    move-result-object v1

    .line 126
    iget-object v2, v0, Lnet/minidev/asm/if;->for:Lnet/minidev/asm/for;

    iget-object v3, v0, Lnet/minidev/asm/if;->try:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lnet/minidev/asm/for;->do(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_14
    const/16 v7, 0xb7

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v12, 0xc0

    const/16 v16, 0xb1

    .line 127
    aget-object v13, v3, v5

    .line 128
    aget-object v7, v2, v6

    invoke-direct {v0, v1, v9, v6, v7}, Lnet/minidev/asm/if;->try(Landroid/support/v4/xz0;IILorg/objectweb/asm/break;)V

    const/16 v7, 0x19

    .line 129
    invoke-virtual {v1, v7, v10}, Landroid/support/v4/xz0;->continue(II)V

    .line 130
    iget-object v7, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual {v1, v12, v7}, Landroid/support/v4/xz0;->abstract(ILjava/lang/String;)V

    .line 131
    invoke-virtual {v13}, Landroid/support/v4/o;->new()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/f92;->private(Ljava/lang/Class;)Landroid/support/v4/f92;

    move-result-object v7

    .line 132
    invoke-virtual {v13}, Landroid/support/v4/o;->case()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 133
    iget-object v9, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/support/v4/o;->for()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/support/v4/f92;->class()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0xb4

    invoke-virtual {v1, v12, v9, v13, v10}, Landroid/support/v4/xz0;->case(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xb6

    goto :goto_14

    :cond_15
    const/16 v12, 0xb4

    .line 134
    iget-object v9, v13, Landroid/support/v4/o;->for:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_16

    .line 135
    invoke-static {v9}, Landroid/support/v4/f92;->native(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 136
    iget-object v10, v0, Lnet/minidev/asm/if;->else:Ljava/lang/String;

    iget-object v13, v13, Landroid/support/v4/o;->for:Ljava/lang/reflect/Method;

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v12, 0xb6

    invoke-virtual {v1, v12, v10, v13, v9}, Landroid/support/v4/xz0;->return(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_14
    invoke-static {v1, v7}, Landroid/support/v4/throw;->do(Landroid/support/v4/xz0;Landroid/support/v4/f92;)V

    const/16 v7, 0xb0

    .line 138
    invoke-virtual {v1, v7}, Landroid/support/v4/xz0;->this(I)V

    .line 139
    aget-object v9, v2, v6

    invoke-virtual {v1, v9}, Landroid/support/v4/xz0;->final(Lorg/objectweb/asm/break;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    .line 140
    invoke-virtual/range {v17 .. v22}, Landroid/support/v4/xz0;->else(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v9, 0xb6

    goto/16 :goto_a

    .line 141
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no Getter for field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/support/v4/o;->for()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/minidev/asm/if;->new:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :goto_15
    throw v1

    :goto_16
    goto :goto_15
.end method

.method public if(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, v0}, Lnet/minidev/asm/if;->do(Ljava/lang/Class;)V

    goto :goto_0
.end method
